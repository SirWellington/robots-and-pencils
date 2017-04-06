Robots & Pencils
============================


## About the Solution
I went with a Generic solution that favored simplicity and reusability.

I used the [Strategy Pattern](https://www.tutorialspoint.com/design_pattern/strategy_pattern.htm)
to make it easy to change out the remote store.

### Benefits

1. By using an `NSDictionary`, it is easy to serialize and deserialize nested objects,
such as `RPComments` containing `RPAnnotations`.

2. Having a standard data format like `NSDictionary` allows data to be saved to
multiple `BackingStore` implementations.

3. The modularity of the design makes it really easy to Unit Test.

4. It is easy to add an in-memory implementation of the backing store, useful for testing purposes.

### Shortcomings

1. Type Hidden - By the time the `BackingStore` gets data, it has already been serialized to
an `NSDictionary`. The REST, service, for example, may need to know more about what object it is
saving, as that would affect the URL path it uses, or the query parameters it uses in the `GET` operation.


---

## Other Approaches
Rather than having each `Serializable` object be responsible for its own serialization,
you could make it so that serialization happens outside the class.

Each class (such as `RPComment`) would have its own `Serializer` that is responsible for serializing it.

The benefit to this approach would be that `RPComment` could have more than one Serializer, one for the REST service, and another for Parse. This might be useful because, for example, the REST Service might have a different name for a particular field.

Questions?   
Please email jwellington.moreno@gmail.com
