### Guide on count and for_each & toset

## count

count → Create N identical resources

count is used when:

* You need multiple copies of the same resource
* Resources are mostly identical
* You don’t care about stable identity beyond index

Example :
```
resource "aws_instance" "server" {
  count = 3
  ami   = "ami-123"
  instance_type = "t2.micro"
}

Terraform creates:

aws_instance.server[0]
aws_instance.server[1]
aws_instance.server[2]
```

## Characteristics

Addressed by index ([0], [1])

If ordering changes → resources may be destroyed/recreated

Best for simple repetition

## ⚠ Problem with count

If you change:

count = 3 → count = 2

Terraform deletes [2].

## for_each

for_each → Create resources with stable identity

for_each is used when:

* Each resource is logically distinct
* You want stable resource identity
* Data comes from maps or sets
* You care about lifecycle safety

Example :
```
resource "aws_instance" "server" {
  for_each = {
    web  = "t2.micro"
    api  = "t3.micro"
  }
  instance_type = each.value
}

Terraform creates:

aws_instance.server["web"]
aws_instance.server["api"]
```

Characteristics of for_each:

* Addressed by key, not index
* If ordering changes → NO recreation
* Removing only affects that key

## Why for_each is safer than count

* count → Index-based, order-dependent
* for_each → Key-based, order-independent
* With count, resources depend on position → order-dependent
* With for_each, resources depend on keys → stable identity.

## toset() → Helper function, not a meta-argument

toset() is NOT like count or for_each.

It simply:

* Converts a list → set
* Removes duplicates
* Enables compatibility with for_each

## Why do we need toset() ?

for_each requires:

* map OR
* set of strings
* It does NOT accept lists directly.

Example WITHOUT toset (Error) :
```
variable "subnets" {
  default = ["subnet-1", "subnet-2"]
}

resource "aws_instance" "server" {
  for_each = var.subnets   # ❌ list → ERROR
}
```
Correct Version WITH toset()
```
resource "aws_instance" "server" {
  for_each = toset(var.subnets)

  subnet_id = each.value
}
```

Now Terraform treats items as unique unordered values.

## Common Pitfalls with for_each and toset()

* for_each with lists → Use toset() to convert to a set
* for_each with maps → Works directly
* Avoid using for_each with count → Use count for simple repetition

* count is numeric and index-based, best for identical resources.
* for_each is key-based and safer for distinct resources.
* toset() is just a helper function used to convert lists into sets so they can be used with for_each.
