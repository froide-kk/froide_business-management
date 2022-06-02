/** */
@javax.annotation.processing.Generated(value = { "Doma", "2.51.0" }, date = "2022-06-02T13:36:09.753+0900")
@org.seasar.doma.DaoImplementation
public class EmployeesDaoImpl implements EmployeesDao, org.seasar.doma.jdbc.ConfigProvider {

    static {
        org.seasar.doma.internal.Artifact.validateVersion("2.51.0");
    }

    private static final java.lang.reflect.Method __method0 = org.seasar.doma.internal.jdbc.dao.DaoImplSupport.getDeclaredMethod(EmployeesDao.class, "insert", Employees.class);

    private static final java.lang.reflect.Method __method1 = org.seasar.doma.internal.jdbc.dao.DaoImplSupport.getDeclaredMethod(EmployeesDao.class, "update", Employees.class);

    private static final java.lang.reflect.Method __method2 = org.seasar.doma.internal.jdbc.dao.DaoImplSupport.getDeclaredMethod(EmployeesDao.class, "delete", Employees.class);

    private static final java.lang.reflect.Method __method3 = org.seasar.doma.internal.jdbc.dao.DaoImplSupport.getDeclaredMethod(EmployeesDao.class, "selectAll");

    private final org.seasar.doma.internal.jdbc.dao.DaoImplSupport __support;

    /**
     * @param config the config
     */
    public EmployeesDaoImpl(org.seasar.doma.jdbc.Config config) {
        __support = new org.seasar.doma.internal.jdbc.dao.DaoImplSupport(config);
    }

    @Override
    public org.seasar.doma.jdbc.Config getConfig() {
        return __support.getConfig();
    }

    @Override
    public int insert(Employees employees) {
        __support.entering("EmployeesDaoImpl", "insert", employees);
        try {
            if (employees == null) {
                throw new org.seasar.doma.DomaNullPointerException("employees");
            }
            org.seasar.doma.jdbc.query.AutoInsertQuery<Employees> __query = __support.getQueryImplementors().createAutoInsertQuery(__method0, _Employees.getSingletonInternal());
            __query.setMethod(__method0);
            __query.setConfig(__support.getConfig());
            __query.setEntity(employees);
            __query.setCallerClassName("EmployeesDaoImpl");
            __query.setCallerMethodName("insert");
            __query.setQueryTimeout(-1);
            __query.setSqlLogType(org.seasar.doma.jdbc.SqlLogType.FORMATTED);
            __query.setNullExcluded(false);
            __query.setIncludedPropertyNames();
            __query.setExcludedPropertyNames();
            __query.prepare();
            org.seasar.doma.jdbc.command.InsertCommand __command = __support.getCommandImplementors().createInsertCommand(__method0, __query);
            int __result = __command.execute();
            __query.complete();
            __support.exiting("EmployeesDaoImpl", "insert", __result);
            return __result;
        } catch (java.lang.RuntimeException __e) {
            __support.throwing("EmployeesDaoImpl", "insert", __e);
            throw __e;
        }
    }

    @Override
    public int update(Employees employees) {
        __support.entering("EmployeesDaoImpl", "update", employees);
        try {
            if (employees == null) {
                throw new org.seasar.doma.DomaNullPointerException("employees");
            }
            org.seasar.doma.jdbc.query.AutoUpdateQuery<Employees> __query = __support.getQueryImplementors().createAutoUpdateQuery(__method1, _Employees.getSingletonInternal());
            __query.setMethod(__method1);
            __query.setConfig(__support.getConfig());
            __query.setEntity(employees);
            __query.setCallerClassName("EmployeesDaoImpl");
            __query.setCallerMethodName("update");
            __query.setQueryTimeout(-1);
            __query.setSqlLogType(org.seasar.doma.jdbc.SqlLogType.FORMATTED);
            __query.setNullExcluded(false);
            __query.setVersionIgnored(false);
            __query.setIncludedPropertyNames();
            __query.setExcludedPropertyNames();
            __query.setUnchangedPropertyIncluded(false);
            __query.setOptimisticLockExceptionSuppressed(false);
            __query.prepare();
            org.seasar.doma.jdbc.command.UpdateCommand __command = __support.getCommandImplementors().createUpdateCommand(__method1, __query);
            int __result = __command.execute();
            __query.complete();
            __support.exiting("EmployeesDaoImpl", "update", __result);
            return __result;
        } catch (java.lang.RuntimeException __e) {
            __support.throwing("EmployeesDaoImpl", "update", __e);
            throw __e;
        }
    }

    @Override
    public int delete(Employees employees) {
        __support.entering("EmployeesDaoImpl", "delete", employees);
        try {
            if (employees == null) {
                throw new org.seasar.doma.DomaNullPointerException("employees");
            }
            org.seasar.doma.jdbc.query.AutoDeleteQuery<Employees> __query = __support.getQueryImplementors().createAutoDeleteQuery(__method2, _Employees.getSingletonInternal());
            __query.setMethod(__method2);
            __query.setConfig(__support.getConfig());
            __query.setEntity(employees);
            __query.setCallerClassName("EmployeesDaoImpl");
            __query.setCallerMethodName("delete");
            __query.setQueryTimeout(-1);
            __query.setSqlLogType(org.seasar.doma.jdbc.SqlLogType.FORMATTED);
            __query.setVersionIgnored(false);
            __query.setOptimisticLockExceptionSuppressed(false);
            __query.prepare();
            org.seasar.doma.jdbc.command.DeleteCommand __command = __support.getCommandImplementors().createDeleteCommand(__method2, __query);
            int __result = __command.execute();
            __query.complete();
            __support.exiting("EmployeesDaoImpl", "delete", __result);
            return __result;
        } catch (java.lang.RuntimeException __e) {
            __support.throwing("EmployeesDaoImpl", "delete", __e);
            throw __e;
        }
    }

    @Override
    public java.util.List<Employees> selectAll() {
        __support.entering("EmployeesDaoImpl", "selectAll");
        try {
            org.seasar.doma.jdbc.query.SqlFileSelectQuery __query = __support.getQueryImplementors().createSqlFileSelectQuery(__method3);
            __query.setMethod(__method3);
            __query.setConfig(__support.getConfig());
            __query.setSqlFilePath("META-INF/EmployeesDao/selectAll.sql");
            __query.setEntityType(_Employees.getSingletonInternal());
            __query.setCallerClassName("EmployeesDaoImpl");
            __query.setCallerMethodName("selectAll");
            __query.setResultEnsured(false);
            __query.setResultMappingEnsured(false);
            __query.setFetchType(org.seasar.doma.FetchType.LAZY);
            __query.setQueryTimeout(-1);
            __query.setMaxRows(-1);
            __query.setFetchSize(-1);
            __query.setSqlLogType(org.seasar.doma.jdbc.SqlLogType.FORMATTED);
            __query.prepare();
            org.seasar.doma.jdbc.command.SelectCommand<java.util.List<Employees>> __command = __support.getCommandImplementors().createSelectCommand(__method3, __query, new org.seasar.doma.internal.jdbc.command.EntityResultListHandler<Employees>(_Employees.getSingletonInternal()));
            java.util.List<Employees> __result = __command.execute();
            __query.complete();
            __support.exiting("EmployeesDaoImpl", "selectAll", __result);
            return __result;
        } catch (java.lang.RuntimeException __e) {
            __support.throwing("EmployeesDaoImpl", "selectAll", __e);
            throw __e;
        }
    }

}
