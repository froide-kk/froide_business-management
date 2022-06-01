/** */
@javax.annotation.processing.Generated(value = { "Doma", "2.51.0" }, date = "2022-06-01T17:26:36.396+0900")
@org.seasar.doma.EntityTypeImplementation
public final class _employees extends org.seasar.doma.jdbc.entity.AbstractEntityType<employees> {

    static {
        org.seasar.doma.internal.Artifact.validateVersion("2.51.0");
    }

    private static final _employees __singleton = new _employees();

    private final org.seasar.doma.jdbc.entity.NamingType __namingType = null;

    private final org.seasar.doma.jdbc.id.BuiltinIdentityIdGenerator __idGenerator = new org.seasar.doma.jdbc.id.BuiltinIdentityIdGenerator();

    private final java.util.function.Supplier<org.seasar.doma.jdbc.entity.NullEntityListener<employees>> __listenerSupplier;

    private final boolean __immutable;

    private final String __catalogName;

    private final String __schemaName;

    private final String __tableName;

    private final boolean __isQuoteRequired;

    private final String __name;

    private final java.util.List<org.seasar.doma.jdbc.entity.EntityPropertyType<employees, ?>> __idPropertyTypes;

    private final java.util.List<org.seasar.doma.jdbc.entity.EntityPropertyType<employees, ?>> __entityPropertyTypes;

    private final java.util.Map<String, org.seasar.doma.jdbc.entity.EntityPropertyType<employees, ?>> __entityPropertyTypeMap;

    @SuppressWarnings("unused")
    private final java.util.Map<String, org.seasar.doma.jdbc.entity.EmbeddedPropertyType<employees, ?>> __embeddedPropertyTypeMap;

    private _employees() {
        __listenerSupplier = org.seasar.doma.internal.jdbc.entity.NullEntityListenerSuppliers.of();
        __immutable = false;
        __name = "employees";
        __catalogName = "";
        __schemaName = "";
        __tableName = "";
        __isQuoteRequired = false;
        java.util.List<org.seasar.doma.jdbc.entity.EntityPropertyType<employees, ?>> __idList = new java.util.ArrayList<>();
        java.util.List<org.seasar.doma.jdbc.entity.EntityPropertyType<employees, ?>> __list = new java.util.ArrayList<>(10);
        java.util.Map<String, org.seasar.doma.jdbc.entity.EntityPropertyType<employees, ?>> __map = new java.util.LinkedHashMap<>(10);
        java.util.Map<String, org.seasar.doma.jdbc.entity.EmbeddedPropertyType<employees, ?>> __embeddedMap = new java.util.LinkedHashMap<>(10);
        initializeMaps(__map, __embeddedMap);
        initializeIdList(__map, __idList);
        initializeList(__map, __list);
        __idPropertyTypes = java.util.Collections.unmodifiableList(__idList);
        __entityPropertyTypes = java.util.Collections.unmodifiableList(__list);
        __entityPropertyTypeMap = java.util.Collections.unmodifiableMap(__map);
        __embeddedPropertyTypeMap = java.util.Collections.unmodifiableMap(__embeddedMap);
    }

    private void initializeMaps(java.util.Map<String, org.seasar.doma.jdbc.entity.EntityPropertyType<employees, ?>> __map, java.util.Map<String, org.seasar.doma.jdbc.entity.EmbeddedPropertyType<employees, ?>> __embeddedMap) {
        __map.put("id", new org.seasar.doma.jdbc.entity.GeneratedIdPropertyType<employees, java.lang.Integer, java.lang.Integer>(employees.class, org.seasar.doma.internal.jdbc.scalar.BasicScalarSuppliers.ofInteger(), "id", "", __namingType, false, __idGenerator));
        __map.put("name", new org.seasar.doma.jdbc.entity.DefaultPropertyType<employees, java.lang.String, java.lang.String>(employees.class, org.seasar.doma.internal.jdbc.scalar.BasicScalarSuppliers.ofString(), "name", "", __namingType, true, true, false));
        __map.put("first_name", new org.seasar.doma.jdbc.entity.DefaultPropertyType<employees, java.lang.String, java.lang.String>(employees.class, org.seasar.doma.internal.jdbc.scalar.BasicScalarSuppliers.ofString(), "first_name", "", __namingType, true, true, false));
        __map.put("last_name", new org.seasar.doma.jdbc.entity.DefaultPropertyType<employees, java.lang.String, java.lang.String>(employees.class, org.seasar.doma.internal.jdbc.scalar.BasicScalarSuppliers.ofString(), "last_name", "", __namingType, true, true, false));
        __map.put("email", new org.seasar.doma.jdbc.entity.DefaultPropertyType<employees, java.lang.String, java.lang.String>(employees.class, org.seasar.doma.internal.jdbc.scalar.BasicScalarSuppliers.ofString(), "email", "", __namingType, true, true, false));
        __map.put("password_hash", new org.seasar.doma.jdbc.entity.DefaultPropertyType<employees, java.lang.Integer, java.lang.Integer>(employees.class, org.seasar.doma.internal.jdbc.scalar.BasicScalarSuppliers.ofInteger(), "password_hash", "", __namingType, true, true, false));
        __map.put("birthday", new org.seasar.doma.jdbc.entity.DefaultPropertyType<employees, java.lang.String, java.lang.String>(employees.class, org.seasar.doma.internal.jdbc.scalar.BasicScalarSuppliers.ofString(), "birthday", "", __namingType, true, true, false));
        __map.put("join_date", new org.seasar.doma.jdbc.entity.DefaultPropertyType<employees, java.lang.String, java.lang.String>(employees.class, org.seasar.doma.internal.jdbc.scalar.BasicScalarSuppliers.ofString(), "join_date", "", __namingType, true, true, false));
        __map.put("management_flag", new org.seasar.doma.jdbc.entity.DefaultPropertyType<employees, java.lang.Integer, java.lang.Integer>(employees.class, org.seasar.doma.internal.jdbc.scalar.BasicScalarSuppliers.ofInteger(), "management_flag", "", __namingType, true, true, false));
        __map.put("password", new org.seasar.doma.jdbc.entity.DefaultPropertyType<employees, java.lang.String, java.lang.String>(employees.class, org.seasar.doma.internal.jdbc.scalar.BasicScalarSuppliers.ofString(), "password", "", __namingType, true, true, false));
    }

    private void initializeIdList(java.util.Map<String, org.seasar.doma.jdbc.entity.EntityPropertyType<employees, ?>> __map, java.util.List<org.seasar.doma.jdbc.entity.EntityPropertyType<employees, ?>> __idList) {
        __idList.add(__map.get("id"));
    }

    private void initializeList(java.util.Map<String, org.seasar.doma.jdbc.entity.EntityPropertyType<employees, ?>> __map, java.util.List<org.seasar.doma.jdbc.entity.EntityPropertyType<employees, ?>> __list) {
        __list.addAll(__map.values());
    }

    @Override
    public org.seasar.doma.jdbc.entity.NamingType getNamingType() {
        return __namingType;
    }

    @Override
    public boolean isImmutable() {
        return __immutable;
    }

    @Override
    public String getName() {
        return __name;
    }

    @Override
    public String getCatalogName() {
        return __catalogName;
    }

    @Override
    public String getSchemaName() {
        return __schemaName;
    }

    @Override
    @Deprecated
    public String getTableName() {
        return getTableName(org.seasar.doma.internal.jdbc.entity.TableNames.namingFunction);
    }

    @Override
    public String getTableName(java.util.function.BiFunction<org.seasar.doma.jdbc.entity.NamingType, String, String> namingFunction) {
        if (__tableName.isEmpty()) {
            return namingFunction.apply(__namingType, __name);
        }
        return __tableName;
    }

    @Override
    public boolean isQuoteRequired() {
        return __isQuoteRequired;
    }

    @SuppressWarnings({"rawtypes", "unchecked"})
    @Override
    public void preInsert(employees entity, org.seasar.doma.jdbc.entity.PreInsertContext<employees> context) {
        Class __listenerClass = org.seasar.doma.jdbc.entity.NullEntityListener.class;
        org.seasar.doma.jdbc.entity.NullEntityListener __listener = context.getConfig().getEntityListenerProvider().get(__listenerClass, __listenerSupplier);
        __listener.preInsert(entity, context);
    }

    @SuppressWarnings({"rawtypes", "unchecked"})
    @Override
    public void preUpdate(employees entity, org.seasar.doma.jdbc.entity.PreUpdateContext<employees> context) {
        Class __listenerClass = org.seasar.doma.jdbc.entity.NullEntityListener.class;
        org.seasar.doma.jdbc.entity.NullEntityListener __listener = context.getConfig().getEntityListenerProvider().get(__listenerClass, __listenerSupplier);
        __listener.preUpdate(entity, context);
    }

    @SuppressWarnings({"rawtypes", "unchecked"})
    @Override
    public void preDelete(employees entity, org.seasar.doma.jdbc.entity.PreDeleteContext<employees> context) {
        Class __listenerClass = org.seasar.doma.jdbc.entity.NullEntityListener.class;
        org.seasar.doma.jdbc.entity.NullEntityListener __listener = context.getConfig().getEntityListenerProvider().get(__listenerClass, __listenerSupplier);
        __listener.preDelete(entity, context);
    }

    @SuppressWarnings({"rawtypes", "unchecked"})
    @Override
    public void postInsert(employees entity, org.seasar.doma.jdbc.entity.PostInsertContext<employees> context) {
        Class __listenerClass = org.seasar.doma.jdbc.entity.NullEntityListener.class;
        org.seasar.doma.jdbc.entity.NullEntityListener __listener = context.getConfig().getEntityListenerProvider().get(__listenerClass, __listenerSupplier);
        __listener.postInsert(entity, context);
    }

    @SuppressWarnings({"rawtypes", "unchecked"})
    @Override
    public void postUpdate(employees entity, org.seasar.doma.jdbc.entity.PostUpdateContext<employees> context) {
        Class __listenerClass = org.seasar.doma.jdbc.entity.NullEntityListener.class;
        org.seasar.doma.jdbc.entity.NullEntityListener __listener = context.getConfig().getEntityListenerProvider().get(__listenerClass, __listenerSupplier);
        __listener.postUpdate(entity, context);
    }

    @SuppressWarnings({"rawtypes", "unchecked"})
    @Override
    public void postDelete(employees entity, org.seasar.doma.jdbc.entity.PostDeleteContext<employees> context) {
        Class __listenerClass = org.seasar.doma.jdbc.entity.NullEntityListener.class;
        org.seasar.doma.jdbc.entity.NullEntityListener __listener = context.getConfig().getEntityListenerProvider().get(__listenerClass, __listenerSupplier);
        __listener.postDelete(entity, context);
    }

    @Override
    public java.util.List<org.seasar.doma.jdbc.entity.EntityPropertyType<employees, ?>> getEntityPropertyTypes() {
        return __entityPropertyTypes;
    }

    @Override
    public org.seasar.doma.jdbc.entity.EntityPropertyType<employees, ?> getEntityPropertyType(String __name) {
        return __entityPropertyTypeMap.get(__name);
    }

    @Override
    public java.util.List<org.seasar.doma.jdbc.entity.EntityPropertyType<employees, ?>> getIdPropertyTypes() {
        return __idPropertyTypes;
    }

    @SuppressWarnings("unchecked")
    @Override
    public org.seasar.doma.jdbc.entity.GeneratedIdPropertyType<employees, ?, ?> getGeneratedIdPropertyType() {
        return (org.seasar.doma.jdbc.entity.GeneratedIdPropertyType<employees, ?, ?>)__entityPropertyTypeMap.get("id");
    }

    @SuppressWarnings("unchecked")
    @Override
    public org.seasar.doma.jdbc.entity.VersionPropertyType<employees, ?, ?> getVersionPropertyType() {
        return (org.seasar.doma.jdbc.entity.VersionPropertyType<employees, ?, ?>)__entityPropertyTypeMap.get("null");
    }

    @SuppressWarnings("unchecked")
    @Override
    public org.seasar.doma.jdbc.entity.TenantIdPropertyType<employees, ?, ?> getTenantIdPropertyType() {
        return (org.seasar.doma.jdbc.entity.TenantIdPropertyType<employees, ?, ?>)__entityPropertyTypeMap.get("null");
    }

    @Override
    public employees newEntity(java.util.Map<String, org.seasar.doma.jdbc.entity.Property<employees, ?>> __args) {
        employees entity = new employees();
        if (__args.get("id") != null) __args.get("id").save(entity);
        if (__args.get("name") != null) __args.get("name").save(entity);
        if (__args.get("first_name") != null) __args.get("first_name").save(entity);
        if (__args.get("last_name") != null) __args.get("last_name").save(entity);
        if (__args.get("email") != null) __args.get("email").save(entity);
        if (__args.get("password_hash") != null) __args.get("password_hash").save(entity);
        if (__args.get("birthday") != null) __args.get("birthday").save(entity);
        if (__args.get("join_date") != null) __args.get("join_date").save(entity);
        if (__args.get("management_flag") != null) __args.get("management_flag").save(entity);
        if (__args.get("password") != null) __args.get("password").save(entity);
        return entity;
    }

    @Override
    public Class<employees> getEntityClass() {
        return employees.class;
    }

    @Override
    public employees getOriginalStates(employees __entity) {
        return null;
    }

    @Override
    public void saveCurrentStates(employees __entity) {
    }

    /**
     * @return the singleton
     */
    public static _employees getSingletonInternal() {
        return __singleton;
    }

    /**
     * @return the new instance
     */
    public static _employees newInstance() {
        return new _employees();
    }

}
