.class final Lcom/android/settings/framework/database/sql/HtcCompiledSql;
.super Ljava/lang/Object;
.source "HtcCompiledSql.java"


# instance fields
.field private final mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDeleteSql:Landroid/database/sqlite/SQLiteStatement;

.field private mInsertSql:Landroid/database/sqlite/SQLiteStatement;

.field private mSelectExistsSql:Landroid/database/sqlite/SQLiteStatement;

.field private mSelectSql:Landroid/database/sqlite/SQLiteStatement;

.field private final mTableName:Ljava/lang/String;

.field private mUpdateSql:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 0
    .parameter "db"
    .parameter "tableName"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/settings/framework/database/sql/HtcCompiledSql;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 39
    iput-object p2, p0, Lcom/android/settings/framework/database/sql/HtcCompiledSql;->mTableName:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public closeAll()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/settings/framework/database/sql/HtcCompiledSql;->mSelectSql:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/settings/framework/database/sql/HtcCompiledSql;->mSelectSql:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/database/sql/HtcCompiledSql;->mInsertSql:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/android/settings/framework/database/sql/HtcCompiledSql;->mInsertSql:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/database/sql/HtcCompiledSql;->mUpdateSql:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v0, :cond_2

    .line 149
    iget-object v0, p0, Lcom/android/settings/framework/database/sql/HtcCompiledSql;->mUpdateSql:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/android/settings/framework/database/sql/HtcCompiledSql;->mDeleteSql:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v0, :cond_3

    .line 152
    iget-object v0, p0, Lcom/android/settings/framework/database/sql/HtcCompiledSql;->mDeleteSql:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 154
    :cond_3
    return-void
.end method

.method public getDeleteSql()Landroid/database/sqlite/SQLiteStatement;
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/settings/framework/database/sql/HtcCompiledSql;->mDeleteSql:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/settings/framework/database/sql/HtcCompiledSql;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/database/sql/HtcCompiledSql;->mTableName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE name = ?;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/database/sql/HtcCompiledSql;->mDeleteSql:Landroid/database/sqlite/SQLiteStatement;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/database/sql/HtcCompiledSql;->mDeleteSql:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method public getInsertSql()Landroid/database/sqlite/SQLiteStatement;
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings/framework/database/sql/HtcCompiledSql;->mInsertSql:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/settings/framework/database/sql/HtcCompiledSql;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT OR REPLACE INTO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/database/sql/HtcCompiledSql;->mTableName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (name, value) VALUES(?, ?);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/database/sql/HtcCompiledSql;->mInsertSql:Landroid/database/sqlite/SQLiteStatement;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/database/sql/HtcCompiledSql;->mInsertSql:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method public getSelectExistsSql()Landroid/database/sqlite/SQLiteStatement;
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/framework/database/sql/HtcCompiledSql;->mSelectExistsSql:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/settings/framework/database/sql/HtcCompiledSql;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT count(*) FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/database/sql/HtcCompiledSql;->mTableName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE name = ?;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/database/sql/HtcCompiledSql;->mSelectExistsSql:Landroid/database/sqlite/SQLiteStatement;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/database/sql/HtcCompiledSql;->mSelectExistsSql:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method public getSelectSql()Landroid/database/sqlite/SQLiteStatement;
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/framework/database/sql/HtcCompiledSql;->mSelectSql:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/settings/framework/database/sql/HtcCompiledSql;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT value FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/database/sql/HtcCompiledSql;->mTableName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE name = ?;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/database/sql/HtcCompiledSql;->mSelectSql:Landroid/database/sqlite/SQLiteStatement;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/database/sql/HtcCompiledSql;->mSelectSql:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method public getUpdateSql()Landroid/database/sqlite/SQLiteStatement;
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/framework/database/sql/HtcCompiledSql;->mUpdateSql:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/settings/framework/database/sql/HtcCompiledSql;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/database/sql/HtcCompiledSql;->mTableName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SET value = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE name = ?;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/database/sql/HtcCompiledSql;->mUpdateSql:Landroid/database/sqlite/SQLiteStatement;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/database/sql/HtcCompiledSql;->mUpdateSql:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method
