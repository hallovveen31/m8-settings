.class Lcom/android/settings/wifi/WISPrProvider$DatabaseWrapper;
.super Ljava/lang/Object;
.source "WISPrProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WISPrProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DatabaseWrapper"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field private mDbHelper:Lcom/android/settings/wifi/WISPrProvider$DatabaseHelper;

.field final synthetic this$0:Lcom/android/settings/wifi/WISPrProvider;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WISPrProvider;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "c"

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/settings/wifi/WISPrProvider$DatabaseWrapper;->this$0:Lcom/android/settings/wifi/WISPrProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    new-instance v0, Lcom/android/settings/wifi/WISPrProvider$DatabaseHelper;

    invoke-direct {v0, p2}, Lcom/android/settings/wifi/WISPrProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WISPrProvider$DatabaseWrapper;->mDbHelper:Lcom/android/settings/wifi/WISPrProvider$DatabaseHelper;

    .line 271
    iput-object p2, p0, Lcom/android/settings/wifi/WISPrProvider$DatabaseWrapper;->mContext:Landroid/content/Context;

    .line 273
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .parameter "table"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 326
    iget-object v4, p0, Lcom/android/settings/wifi/WISPrProvider$DatabaseWrapper;->mDbHelper:Lcom/android/settings/wifi/WISPrProvider$DatabaseHelper;

    invoke-virtual {v4}, Lcom/android/settings/wifi/WISPrProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 327
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 329
    .local v2, result:I
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-nez v4, :cond_0

    move v3, v2

    .line 338
    .end local v2           #result:I
    .local v3, result:I
    :goto_0
    return v3

    .line 331
    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    :goto_1
    move v3, v2

    .line 338
    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_0

    .line 332
    .end local v3           #result:I
    .restart local v2       #result:I
    :catch_0
    move-exception v1

    .line 333
    .local v1, e:Landroid/database/SQLException;
    const-string v4, "WISPrProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 334
    .end local v1           #e:Landroid/database/SQLException;
    :catch_1
    move-exception v1

    .line 335
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v4, "WISPrProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalStateException:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 336
    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_0
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 7
    .parameter "table"
    .parameter "nullColumnHack"
    .parameter "values"

    .prologue
    .line 294
    iget-object v4, p0, Lcom/android/settings/wifi/WISPrProvider$DatabaseWrapper;->mDbHelper:Lcom/android/settings/wifi/WISPrProvider$DatabaseHelper;

    invoke-virtual {v4}, Lcom/android/settings/wifi/WISPrProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 295
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v2, 0x0

    .line 297
    .local v2, result:J
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-nez v4, :cond_0

    move-wide v4, v2

    .line 308
    :goto_0
    return-wide v4

    .line 299
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    move-wide v4, v2

    .line 308
    goto :goto_0

    .line 300
    :catch_0
    move-exception v1

    .line 301
    .local v1, e:Landroid/database/SQLException;
    const-string v4, "WISPrProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insert exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v4, p0, Lcom/android/settings/wifi/WISPrProvider$DatabaseWrapper;->mContext:Landroid/content/Context;

    const v5, 0x7f0c048b

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 303
    const-wide/16 v4, -0x1

    goto :goto_0

    .line 304
    .end local v1           #e:Landroid/database/SQLException;
    :catch_1
    move-exception v1

    .line 305
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v4, "WISPrProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalStateException:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v4, v2

    .line 306
    goto :goto_0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "table"
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"

    .prologue
    .line 321
    iget-object v1, p0, Lcom/android/settings/wifi/WISPrProvider$DatabaseWrapper;->mDbHelper:Lcom/android/settings/wifi/WISPrProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WISPrProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 322
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "distinct"
    .parameter "table"
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"
    .parameter "limit"

    .prologue
    .line 314
    iget-object v1, p0, Lcom/android/settings/wifi/WISPrProvider$DatabaseWrapper;->mDbHelper:Lcom/android/settings/wifi/WISPrProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WISPrProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 315
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .parameter "sql"
    .parameter "selectionArgs"

    .prologue
    .line 342
    iget-object v1, p0, Lcom/android/settings/wifi/WISPrProvider$DatabaseWrapper;->mDbHelper:Lcom/android/settings/wifi/WISPrProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WISPrProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 343
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 344
    const/4 v1, 0x0

    .line 345
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .parameter "table"
    .parameter "values"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 276
    iget-object v4, p0, Lcom/android/settings/wifi/WISPrProvider$DatabaseWrapper;->mDbHelper:Lcom/android/settings/wifi/WISPrProvider$DatabaseHelper;

    invoke-virtual {v4}, Lcom/android/settings/wifi/WISPrProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 277
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 279
    .local v2, result:I
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-nez v4, :cond_0

    move v3, v2

    .line 290
    .end local v2           #result:I
    .local v3, result:I
    :goto_0
    return v3

    .line 281
    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    move v3, v2

    .line 290
    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_0

    .line 282
    .end local v3           #result:I
    .restart local v2       #result:I
    :catch_0
    move-exception v1

    .line 283
    .local v1, e:Landroid/database/SQLException;
    iget-object v4, p0, Lcom/android/settings/wifi/WISPrProvider$DatabaseWrapper;->mContext:Landroid/content/Context;

    const v5, 0x7f0c048b

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 284
    const-string v4, "WISPrProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 285
    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_0

    .line 286
    .end local v1           #e:Landroid/database/SQLException;
    .end local v3           #result:I
    .restart local v2       #result:I
    :catch_1
    move-exception v1

    .line 287
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v4, "WISPrProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalStateException:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 288
    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_0
.end method
