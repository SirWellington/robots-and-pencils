Robots & Pencils
============================


## About the Solution
I went with a Generic solution that favored simplicity and reusability.

I used the [Strategy Pattern](https://www.tutorialspoint.com/design_pattern/strategy_pattern.htm)
to make it easy to change out the remote store in the future.

### Benefits
 
1. By using an `NSDictionary` as the standard data-format, it is easy to serialize and deserialize nested objects,
such as `RPComments` containing `RPAnnotations`.

2. Having a standard data format like `NSDictionary` allows data to be saved to
multiple `BackingStore` implementations. It also insulates `RPComment` from any back-end changes.

3. The modularity of the design makes it really easy to Unit Test.

4. It is easy to add an in-memory implementation of the backing store, useful for testing purposes.

### Shortcomings

1. Type Hidden - By the time the `BackingStore` gets data, it has already been serialized to
an `NSDictionary`. The REST, service, for example, may need to know more about what object it is
saving, as that would affect the URL path it uses, or the query parameters it uses in the `GET` operation.

2. Manual serialization code can get tedius if your data-structures are large and complex.


---

## Other Approaches

### External Serializers
Rather than having each `Serializable` object be responsible for its own serialization,
you could make it so that serialization happens outside the class.

Each class (such as `RPComment`) would have its own `Serializer` that is responsible for serializing it.

The benefit to this approach would be that `RPComment` could have more than one Serializer, one for the REST service, and another for Parse. This might be useful because, for example, the REST Service might have a different name for a particular field.

### Non-Generic Store
If the number of objects you plan to save are small and known (3-4 classes), you can ditch the generic behavior of this project and do the following:

1. Replace generic `save()` and `get()` methods with concrete methods, `saveComment()`, `getComment()`. 

2. Move the serialization code to the concrete `RemoteStore` implementations. This would leave the serialization details up to the actual implementation. So for example, the `REST` service could serialize it to JSON, and send it to a particular URL, while a `Parse` implementation may want to serialize it as `Data`.

Questions?   
Please email jwellington.moreno@gmail.com
