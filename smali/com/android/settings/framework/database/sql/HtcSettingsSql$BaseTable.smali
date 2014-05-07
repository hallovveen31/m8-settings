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
    .parameter "db"
    .parameter "tableName"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/android/settings/framework/database/sql/HtcCompiledSql;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/framework/database/sql/HtcCompiledSql;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;->mSql:Lcom/android/settings/framework/database/sql/HtcCompiledSql;

    .line 63
    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;->close()V

    return-void
.end method

.method private close()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;->mSql:Lcom/android/settings/framework/database/sql/HtcCompiledSql;

    invoke-virtual {v0}, Lcom/android/settings/framework/database/sql/HtcCompiledSql;->closeAll()V

    .line 70
    return-void
.end method


# virtual methods
.method public exists(Ljava/lang/String;)Z
    .locals 7
    .parameter "name"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 82
    iget-object v3, p0, Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;->mSql:Lcom/android/settings/framework/database/sql/HtcCompiledSql;

    invoke-virtual {v3}, Lcom/android/settings/framework/database/sql/HtcCompiledSql;->getSelectExistsSql()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 83
    .local v2, sql:Landroid/database/sqlite/SQLiteStatement;
    const/4 v1, 0x0

    .line 86
    .local v1, result:Ljava/lang/String;
    invoke-virtual {v2, v4, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 90
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 93
    .local v0, count:I
    invoke-static {}, Lcom/android/settings/framework/database/sql/HtcSettingsSql;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
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

    .line 96
    :cond_0
    if-lez v0, :cond_2

    :goto_1
    return v4

    :cond_1
    move v3, v5

    .line 94
    goto :goto_0

    :cond_2
    move v4, v5

    .line 96
    goto :goto_1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v4, p0, Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;->mSql:Lcom/android/settings/framework/database/sql/HtcCompiledSql;

    invoke-virtual {v4}, Lcom/android/settings/framework/database/sql/HtcCompiledSql;->getSelectSql()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 115
    .local v2, sql:Landroid/database/sqlite/SQLiteStatement;
    const/4 v3, 0x0

    .line 116
    .local v3, value:Ljava/lang/String;
    const/4 v1, 0x0

    .line 118
    .local v1, found:Z
    const/4 v4, 0x1

    invoke-virtual {v2, v4, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 121
    :try_start_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 122
    const/4 v1, 0x1

    .line 151
    invoke-static {}, Lcom/android/settings/framework/database/sql/HtcSettingsSql;->access$000()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 152
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

    .line 155
    :cond_0
    return-object v3

    .line 123
    :catch_0
    move-exception v0

    .line 147
    .local v0, e:Landroid/database/sqlite/SQLiteDoneException;
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

    .line 152
    .end local v0           #e:Landroid/database/sqlite/SQLiteDoneException;
    :cond_1
    const-string v4, "Not found!"

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 171
    move-object v1, p2

    .line 174
    .local v1, value:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 179
    :goto_0
    return-object v1

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
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
    .parameter "name"
    .parameter "value"

    .prologue
    .line 203
    iget-object v3, p0, Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;->mSql:Lcom/android/settings/framework/database/sql/HtcCompiledSql;

    invoke-virtual {v3}, Lcom/android/settings/framework/database/sql/HtcCompiledSql;->getInsertSql()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 206
    .local v2, sql:Landroid/database/sqlite/SQLiteStatement;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindAllArgsAsStrings([Ljava/lang/String;)V

    .line 207
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    .line 209
    .local v0, id:J
    invoke-static {}, Lcom/android/settings/framework/database/sql/HtcSettingsSql;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 210
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

    .line 213
    :cond_0
    return-wide v0
.end method

.method public removeString(Ljava/lang/String;)I
    .locals 4
    .parameter "name"

    .prologue
    .line 226
    iget-object v2, p0, Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;->mSql:Lcom/android/settings/framework/database/sql/HtcCompiledSql;

    invoke-virtual {v2}, Lcom/android/settings/framework/database/sql/HtcCompiledSql;->getDeleteSql()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 229
    .local v1, sql:Landroid/database/sqlite/SQLiteStatement;
    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 230
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v0

    .line 232
    .local v0, affectedRows:I
    invoke-static {}, Lcom/android/settings/framework/database/sql/HtcSettingsSql;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
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

    .line 235
    :cond_0
    return v0
.end method
