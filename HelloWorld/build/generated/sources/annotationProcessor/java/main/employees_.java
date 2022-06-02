/** */
@javax.annotation.processing.Generated(value = { "Doma", "2.51.0" }, date = "2022-06-02T11:33:18.230+0900")
public final class Employees_ implements org.seasar.doma.jdbc.criteria.metamodel.EntityMetamodel<Employees> {

    static {
        org.seasar.doma.internal.Artifact.validateVersion("2.51.0");
    }

    private final String __qualifiedTableName;

    private final _Employees __entityType = _Employees.getSingletonInternal();

    private final java.util.List<org.seasar.doma.jdbc.criteria.metamodel.PropertyMetamodel<?>> __allPropertyMetamodels;

    public final org.seasar.doma.jdbc.criteria.metamodel.PropertyMetamodel<java.lang.Integer> id = new org.seasar.doma.jdbc.criteria.metamodel.DefaultPropertyMetamodel<java.lang.Integer>(java.lang.Integer.class, __entityType, "id");

    public final org.seasar.doma.jdbc.criteria.metamodel.PropertyMetamodel<java.lang.String> name = new org.seasar.doma.jdbc.criteria.metamodel.DefaultPropertyMetamodel<java.lang.String>(java.lang.String.class, __entityType, "name");

    public final org.seasar.doma.jdbc.criteria.metamodel.PropertyMetamodel<java.lang.String> first_name = new org.seasar.doma.jdbc.criteria.metamodel.DefaultPropertyMetamodel<java.lang.String>(java.lang.String.class, __entityType, "first_name");

    public final org.seasar.doma.jdbc.criteria.metamodel.PropertyMetamodel<java.lang.String> last_name = new org.seasar.doma.jdbc.criteria.metamodel.DefaultPropertyMetamodel<java.lang.String>(java.lang.String.class, __entityType, "last_name");

    public final org.seasar.doma.jdbc.criteria.metamodel.PropertyMetamodel<java.lang.String> email = new org.seasar.doma.jdbc.criteria.metamodel.DefaultPropertyMetamodel<java.lang.String>(java.lang.String.class, __entityType, "email");

    public final org.seasar.doma.jdbc.criteria.metamodel.PropertyMetamodel<java.lang.Integer> password_hash = new org.seasar.doma.jdbc.criteria.metamodel.DefaultPropertyMetamodel<java.lang.Integer>(java.lang.Integer.class, __entityType, "password_hash");

    public final org.seasar.doma.jdbc.criteria.metamodel.PropertyMetamodel<java.lang.String> birthday = new org.seasar.doma.jdbc.criteria.metamodel.DefaultPropertyMetamodel<java.lang.String>(java.lang.String.class, __entityType, "birthday");

    public final org.seasar.doma.jdbc.criteria.metamodel.PropertyMetamodel<java.lang.String> join_date = new org.seasar.doma.jdbc.criteria.metamodel.DefaultPropertyMetamodel<java.lang.String>(java.lang.String.class, __entityType, "join_date");

    public final org.seasar.doma.jdbc.criteria.metamodel.PropertyMetamodel<java.lang.Integer> management_flag = new org.seasar.doma.jdbc.criteria.metamodel.DefaultPropertyMetamodel<java.lang.Integer>(java.lang.Integer.class, __entityType, "management_flag");

    public final org.seasar.doma.jdbc.criteria.metamodel.PropertyMetamodel<java.lang.Integer> department_id = new org.seasar.doma.jdbc.criteria.metamodel.DefaultPropertyMetamodel<java.lang.Integer>(java.lang.Integer.class, __entityType, "department_id");

    public Employees_() {
        this("");
    }

    public Employees_(String qualifiedTableName) {
        this.__qualifiedTableName = java.util.Objects.requireNonNull(qualifiedTableName);
        java.util.ArrayList<org.seasar.doma.jdbc.criteria.metamodel.PropertyMetamodel<?>> __list = new java.util.ArrayList<>(10);
        __list.add(id);
        __list.add(name);
        __list.add(first_name);
        __list.add(last_name);
        __list.add(email);
        __list.add(password_hash);
        __list.add(birthday);
        __list.add(join_date);
        __list.add(management_flag);
        __list.add(department_id);
        __allPropertyMetamodels = java.util.Collections.unmodifiableList(__list);
    }

    @Override
    public org.seasar.doma.jdbc.entity.EntityType<Employees> asType() {
        return __qualifiedTableName.isEmpty() ? __entityType : new org.seasar.doma.jdbc.criteria.metamodel.EntityTypeProxy<>(__entityType, __qualifiedTableName);
    }

    @Override
    public java.util.List<org.seasar.doma.jdbc.criteria.metamodel.PropertyMetamodel<?>> allPropertyMetamodels() {
        return __allPropertyMetamodels;
    }

}
