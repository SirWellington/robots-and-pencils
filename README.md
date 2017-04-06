Robots & Pencils
============================


## About the Solution
I went with a Generic solution that favored simplicity and reusability.

### Benefits

1. By using an `NSDictionary`, it is easy to serialize and deserialize nested objects,
such as `RPComments` containing `RPAnnotations`.

2. Having a standard data format like `NSDictionary` allows serialization to be applied
in multiple scenarios.

## Other Approaches
Rather than having each `Serializable` object be responsible for its own serialization,
you could make it so that serialization happens outside the class.
