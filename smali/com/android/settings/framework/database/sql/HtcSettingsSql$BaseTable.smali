.class public abstract Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;
.super Ljava/lang/Object;
.source "HtcSettingsSql.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/database/sql/HtcSettingsSql;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseTable"
.end annotation


# instance fields
.field private mSql:Lcom/android/settings/framework/database/sql/HtcCompiledSql;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/framework/database/sql/HtcCompiledSql;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/framework/database/sql/HtcCompiledSql;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;->mSql:Lcom/android/settings/framework/database/sql/HtcCompiledSql;

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;->close()V

    return-void
.end method

.method private close()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;->mSql:Lcom/android/settings/framework/database/sql/HtcCompiledSql;

    invoke-virtual {v0}, Lcom/android/settings/framework/database/sql/HtcCompiledSql;->closeAll()V

    return-void
.end method


# virtual methods
.method public exists(Ljava/lang/String;)Z
    .locals 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;->mSql:Lcom/android/settings/framework/database/sql/HtcCompiledSql;

    invoke-virtual {v3}, Lcom/android/settings/framework/database/sql/HtcCompiledSql;->getSelectExistsSql()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    const/4 v1, 0x0

    invoke-virtual {v2, v4, p1}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/android/settings/framework/database/sql/HtcSettingsSql;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exists("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "): "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-lez v0, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/settings/framework/database/sql/HtcSettingsSql;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/settings/framework/database/sql/HtcSettingsSql;->access$100(Ljava/lang/String;)V

    :cond_0
    if-lez v0, :cond_2

    :goto_1
    return v4

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    iget-object v4, p0, Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;->mSql:Lcom/android/settings/framework/database/sql/HtcCompiledSql;

    invoke-virtual {v4}, Lcom/android/settings/framework/database/sql/HtcCompiledSql;->getSelectSql()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v4, p1}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    :try_start_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/settings/framework/database/sql/HtcSettingsSql;->access$000()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getString("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_1

    move-object v4, v3

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/settings/framework/database/sql/HtcSettingsSql;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/settings/framework/database/sql/HtcSettingsSql;->access$100(Ljava/lang/String;)V

    :cond_0
    return-object v3

    :catch_0
    move-exception v0

    new-instance v4, Landroid/provider/Settings$SettingNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (name: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\')"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    const-string v4, "Not found!"

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    move-object v1, p2

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/settings/framework/database/sql/HtcSettingsSql;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Did not find the name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (use the default value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)J
    .locals 5

    iget-object v3, p0, Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;->mSql:Lcom/android/settings/framework/database/sql/HtcCompiledSql;

    invoke-virtual {v3}, Lcom/android/settings/framework/database/sql/HtcCompiledSql;->getInsertSql()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindAllArgsAsStrings([Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    invoke-static {}, Lcom/android/settings/framework/database/sql/HtcSettingsSql;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "putString("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/settings/framework/database/sql/HtcSettingsSql;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/settings/framework/database/sql/HtcSettingsSql;->access$100(Ljava/lang/String;)V

    :cond_0
    return-wide v0
.end method

.method public removeString(Ljava/lang/String;)I
    .locals 4

    iget-object v2, p0, Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;->mSql:Lcom/android/settings/framework/database/sql/HtcCompiledSql;

    invoke-virtual {v2}, Lcom/android/settings/framework/database/sql/HtcCompiledSql;->getDeleteSql()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v0

    invoke-static {}, Lcom/android/settings/framework/database/sql/HtcSettingsSql;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeString("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/settings/framework/database/sql/HtcSettingsSql;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/settings/framework/database/sql/HtcSettingsSql;->access$100(Ljava/lang/String;)V

    :cond_0
    return v0
.end method
