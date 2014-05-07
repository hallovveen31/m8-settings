.class public Lcom/htc/sphere/sync/SyncSettingUtil;
.super Ljava/lang/Object;
.source "SyncSettingUtil.java"

# interfaces
.implements Lcom/htc/sphere/sync/SyncSettings;


# static fields
.field private static final DEFAULT_INTERVAL_IN_SECS:I = 0xe10

.field private static final DEFAULT_IN_REFRESH_WHEN_OPEN:Z = true

.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/htc/sphere/sync/SyncSettingUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sphere/sync/SyncSettingUtil;->LOG_TAG:Ljava/lang/String;

    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static addSyncSetting(Landroid/content/Context;Ljava/lang/String;IIILjava/lang/String;Z)V
    .locals 12
    .parameter "context"
    .parameter "accountType"
    .parameter "updateWhenOpen"
    .parameter "syncInterval"
    .parameter "syncOptionsResId"
    .parameter "pkgName"
    .parameter "override"

    .prologue
    .line 216
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    const/4 v1, 0x0

    .line 220
    .local v1, client:Landroid/content/ContentProviderClient;
    const/4 v7, 0x0

    .line 221
    .local v7, cursor:Landroid/database/Cursor;
    const-wide/16 v9, -0x1

    .line 223
    .local v9, id:J
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/sphere/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 224
    if-eqz v1, :cond_8

    .line 226
    sget-object v2, Lcom/htc/sphere/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    .line 227
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    .line 228
    const-string v4, "account_type=?"

    .line 229
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    .line 230
    const/4 v6, 0x0

    .line 225
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 235
    :goto_1
    if-eqz v7, :cond_2

    .line 236
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 237
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v9

    .line 243
    :cond_2
    if-eqz v7, :cond_3

    .line 244
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 246
    :cond_3
    if-eqz v1, :cond_4

    .line 247
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 250
    :cond_4
    :goto_2
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 251
    .local v11, values:Landroid/content/ContentValues;
    const-string v2, "account_type"

    invoke-virtual {v11, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    if-nez p6, :cond_5

    const-wide/16 v2, -0x1

    cmp-long v2, v9, v2

    if-nez v2, :cond_6

    .line 253
    :cond_5
    const-string v2, "refresh_when_open"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 254
    const-string v2, "sync_interval"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 256
    :cond_6
    const-string v2, "update_secs_res_id"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 257
    const-string v2, "plugin_pkg_name"

    move-object/from16 v0, p5

    invoke-virtual {v11, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-wide/16 v2, -0x1

    cmp-long v2, v9, v2

    if-eqz v2, :cond_d

    .line 260
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/sphere/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 261
    if-eqz v1, :cond_7

    .line 263
    sget-object v2, Lcom/htc/sphere/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    .line 265
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 266
    const/4 v4, 0x0

    .line 262
    invoke-virtual {v1, v2, v11, v3, v4}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 271
    :cond_7
    if-eqz v1, :cond_0

    .line 272
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_0

    .line 233
    .end local v11           #values:Landroid/content/ContentValues;
    :cond_8
    :try_start_2
    sget-object v2, Lcom/htc/sphere/sync/SyncSettingUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ContentProviderClient is null for uri: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/htc/sphere/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 240
    :catch_0
    move-exception v8

    .line 241
    .local v8, e:Ljava/lang/Exception;
    :try_start_3
    sget-object v2, Lcom/htc/sphere/sync/SyncSettingUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "addSyncSetting() error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 243
    if-eqz v7, :cond_9

    .line 244
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 246
    :cond_9
    if-eqz v1, :cond_4

    .line 247
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_2

    .line 242
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 243
    if-eqz v7, :cond_a

    .line 244
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 246
    :cond_a
    if-eqz v1, :cond_b

    .line 247
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 249
    :cond_b
    throw v2

    .line 269
    .restart local v11       #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v2

    .line 271
    if-eqz v1, :cond_0

    .line 272
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_0

    .line 270
    :catchall_1
    move-exception v2

    .line 271
    if-eqz v1, :cond_c

    .line 272
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 274
    :cond_c
    throw v2

    .line 277
    :cond_d
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/sphere/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 278
    if-eqz v1, :cond_e

    .line 279
    sget-object v2, Lcom/htc/sphere/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v11}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 284
    :cond_e
    if-eqz v1, :cond_0

    .line 285
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_0

    .line 282
    :catch_2
    move-exception v2

    .line 284
    if-eqz v1, :cond_0

    .line 285
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_0

    .line 283
    :catchall_2
    move-exception v2

    .line 284
    if-eqz v1, :cond_f

    .line 285
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 287
    :cond_f
    throw v2
.end method

.method public static addSyncSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Z)V
    .locals 13
    .parameter "context"
    .parameter "accountType"
    .parameter "accountName"
    .parameter "updateWhenOpen"
    .parameter "syncInterval"
    .parameter "syncOptionsResId"
    .parameter "syncUpdateIntent"
    .parameter "pkgName"
    .parameter "override"

    .prologue
    .line 506
    if-nez p2, :cond_1

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p7

    move/from16 v7, p8

    .line 507
    invoke-static/range {v1 .. v7}, Lcom/htc/sphere/sync/SyncSettingUtil;->addSyncSetting(Landroid/content/Context;Ljava/lang/String;IIILjava/lang/String;Z)V

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 513
    const/4 v1, 0x0

    .line 514
    .local v1, client:Landroid/content/ContentProviderClient;
    const/4 v8, 0x0

    .line 515
    .local v8, cursor:Landroid/database/Cursor;
    const-wide/16 v10, -0x1

    .line 517
    .local v10, id:J
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/sphere/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 518
    if-eqz v1, :cond_8

    .line 520
    sget-object v2, Lcom/htc/sphere/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    .line 521
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    .line 522
    const-string v4, "account_type=? AND account_name=?"

    .line 523
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    .line 524
    const/4 v6, 0x0

    .line 519
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 529
    :goto_1
    if-eqz v8, :cond_2

    .line 530
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 531
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    .line 537
    :cond_2
    if-eqz v8, :cond_3

    .line 538
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 540
    :cond_3
    if-eqz v1, :cond_4

    .line 541
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 544
    :cond_4
    :goto_2
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 545
    .local v12, values:Landroid/content/ContentValues;
    const-string v2, "account_type"

    invoke-virtual {v12, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string v2, "account_name"

    invoke-virtual {v12, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    if-nez p8, :cond_5

    const-wide/16 v2, -0x1

    cmp-long v2, v10, v2

    if-nez v2, :cond_6

    .line 548
    :cond_5
    const-string v2, "refresh_when_open"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 549
    const-string v2, "sync_interval"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 551
    :cond_6
    const-string v2, "update_secs_res_id"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 552
    const-string v2, "update_intent_action"

    move-object/from16 v0, p6

    invoke-virtual {v12, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    const-string v2, "plugin_pkg_name"

    move-object/from16 v0, p7

    invoke-virtual {v12, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    const-wide/16 v2, -0x1

    cmp-long v2, v10, v2

    if-eqz v2, :cond_d

    .line 556
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/sphere/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 557
    if-eqz v1, :cond_7

    .line 559
    sget-object v2, Lcom/htc/sphere/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    .line 561
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 562
    const/4 v4, 0x0

    .line 558
    invoke-virtual {v1, v2, v12, v3, v4}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 567
    :cond_7
    if-eqz v1, :cond_0

    .line 568
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_0

    .line 527
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_8
    :try_start_2
    sget-object v2, Lcom/htc/sphere/sync/SyncSettingUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ContentProviderClient is null for uri: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/htc/sphere/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 534
    :catch_0
    move-exception v9

    .line 535
    .local v9, e:Ljava/lang/Exception;
    :try_start_3
    sget-object v2, Lcom/htc/sphere/sync/SyncSettingUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "addSyncSetting() error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 537
    if-eqz v8, :cond_9

    .line 538
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 540
    :cond_9
    if-eqz v1, :cond_4

    .line 541
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_2

    .line 536
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 537
    if-eqz v8, :cond_a

    .line 538
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 540
    :cond_a
    if-eqz v1, :cond_b

    .line 541
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 543
    :cond_b
    throw v2

    .line 565
    .restart local v12       #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v2

    .line 567
    if-eqz v1, :cond_0

    .line 568
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_0

    .line 566
    :catchall_1
    move-exception v2

    .line 567
    if-eqz v1, :cond_c

    .line 568
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 570
    :cond_c
    throw v2

    .line 573
    :cond_d
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/sphere/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 574
    if-eqz v1, :cond_e

    .line 576
    sget-object v2, Lcom/htc/sphere/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    .line 575
    invoke-virtual {v1, v2, v12}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 582
    :cond_e
    if-eqz v1, :cond_0

    .line 583
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_0

    .line 580
    :catch_2
    move-exception v2

    .line 582
    if-eqz v1, :cond_0

    .line 583
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_0

    .line 581
    :catchall_2
    move-exception v2

    .line 582
    if-eqz v1, :cond_f

    .line 583
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 585
    :cond_f
    throw v2
.end method

.method public static final getUpdateIntervalSecs(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9
    .parameter "context"
    .parameter "accountType"

    .prologue
    const/16 v8, 0xe10

    .line 34
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v8

    .line 37
    :cond_1
    const/4 v0, 0x0

    .line 38
    .local v0, client:Landroid/content/ContentProviderClient;
    const/4 v6, 0x0

    .line 40
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/sphere/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_3

    .line 43
    sget-object v1, Lcom/htc/sphere/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    .line 44
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "sync_interval"

    aput-object v4, v2, v3

    .line 45
    const-string v3, "account_type=?"

    .line 46
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 47
    const/4 v5, 0x0

    .line 42
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 52
    :goto_1
    if-eqz v6, :cond_7

    .line 53
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 54
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 61
    .local v8, mins:I
    if-eqz v6, :cond_2

    .line 62
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 64
    :cond_2
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    .line 50
    .end local v8           #mins:I
    :cond_3
    :try_start_1
    sget-object v1, Lcom/htc/sphere/sync/SyncSettingUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ContentProviderClient is null for uri: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/htc/sphere/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 58
    :catch_0
    move-exception v7

    .line 59
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    sget-object v1, Lcom/htc/sphere/sync/SyncSettingUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getUpdateIntervalSecs() error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    if-eqz v6, :cond_4

    .line 62
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 64
    :cond_4
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    .line 60
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 61
    if-eqz v6, :cond_5

    .line 62
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 64
    :cond_5
    if-eqz v0, :cond_6

    .line 65
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 67
    :cond_6
    throw v1

    .line 61
    :cond_7
    if-eqz v6, :cond_8

    .line 62
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 64
    :cond_8
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_0
.end method

.method public static final getUpdateIntervalSecs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .parameter "context"
    .parameter "accountType"
    .parameter "accountName"

    .prologue
    const/16 v8, 0xe10

    .line 303
    if-nez p2, :cond_1

    .line 304
    invoke-static {p0, p1}, Lcom/htc/sphere/sync/SyncSettingUtil;->getUpdateIntervalSecs(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    .line 341
    :cond_0
    :goto_0
    return v8

    .line 306
    :cond_1
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 309
    const/4 v0, 0x0

    .line 310
    .local v0, client:Landroid/content/ContentProviderClient;
    const/4 v6, 0x0

    .line 312
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/sphere/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 313
    if-eqz v0, :cond_3

    .line 315
    sget-object v1, Lcom/htc/sphere/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    .line 316
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "sync_interval"

    aput-object v4, v2, v3

    .line 317
    const-string v3, "account_type=? AND account_name=?"

    .line 318
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    .line 319
    const/4 v5, 0x0

    .line 314
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 324
    :goto_1
    if-eqz v6, :cond_7

    .line 325
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 326
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 333
    .local v8, mins:I
    if-eqz v6, :cond_2

    .line 334
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 336
    :cond_2
    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    .line 322
    .end local v8           #mins:I
    :cond_3
    :try_start_1
    sget-object v1, Lcom/htc/sphere/sync/SyncSettingUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ContentProviderClient is null for uri: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/htc/sphere/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 330
    :catch_0
    move-exception v7

    .line 331
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    sget-object v1, Lcom/htc/sphere/sync/SyncSettingUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getUpdateIntervalSecs() error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 333
    if-eqz v6, :cond_4

    .line 334
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 336
    :cond_4
    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_0

    .line 332
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 333
    if-eqz v6, :cond_5

    .line 334
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 336
    :cond_5
    if-eqz v0, :cond_6

    .line 337
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 339
    :cond_6
    throw v1

    .line 333
    :cond_7
    if-eqz v6, :cond_8

    .line 334
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 336
    :cond_8
    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_0
.end method

.method public static isRefreshWhenOpen(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "accountType"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 119
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    :cond_0
    :goto_0
    return v8

    .line 122
    :cond_1
    const/4 v0, 0x0

    .line 123
    .local v0, client:Landroid/content/ContentProviderClient;
    const/4 v6, 0x0

    .line 125
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/sphere/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_4

    .line 128
    sget-object v1, Lcom/htc/sphere/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    .line 129
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "refresh_when_open"

    aput-object v4, v2, v3

    .line 130
    const-string v3, "account_type=?"

    .line 131
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 132
    const/4 v5, 0x0

    .line 127
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 137
    :goto_1
    if-eqz v6, :cond_9

    .line 138
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 139
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getShort(I)S
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ne v1, v8, :cond_6

    move v1, v8

    .line 145
    :goto_2
    if-eqz v6, :cond_2

    .line 146
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 148
    :cond_2
    if-eqz v0, :cond_3

    .line 149
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_3
    move v8, v1

    .line 139
    goto :goto_0

    .line 135
    :cond_4
    :try_start_1
    sget-object v1, Lcom/htc/sphere/sync/SyncSettingUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ContentProviderClient is null for uri: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/htc/sphere/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 142
    :catch_0
    move-exception v7

    .line 143
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    sget-object v1, Lcom/htc/sphere/sync/SyncSettingUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isRefreshWhenOpen() error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    if-eqz v6, :cond_5

    .line 146
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 148
    :cond_5
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    .end local v7           #e:Ljava/lang/Exception;
    :cond_6
    move v1, v9

    .line 139
    goto :goto_2

    .line 144
    :catchall_0
    move-exception v1

    .line 145
    if-eqz v6, :cond_7

    .line 146
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 148
    :cond_7
    if-eqz v0, :cond_8

    .line 149
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 151
    :cond_8
    throw v1

    .line 145
    :cond_9
    if-eqz v6, :cond_a

    .line 146
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 148
    :cond_a
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_0
.end method

.method public static isRefreshWhenOpen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "accountType"
    .parameter "accountName"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 397
    if-nez p2, :cond_1

    .line 398
    invoke-static {p0, p1}, Lcom/htc/sphere/sync/SyncSettingUtil;->isRefreshWhenOpen(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    .line 433
    :cond_0
    :goto_0
    return v8

    .line 400
    :cond_1
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 403
    const/4 v0, 0x0

    .line 404
    .local v0, client:Landroid/content/ContentProviderClient;
    const/4 v6, 0x0

    .line 406
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/sphere/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 407
    if-eqz v0, :cond_4

    .line 409
    sget-object v1, Lcom/htc/sphere/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    .line 410
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "refresh_when_open"

    aput-object v4, v2, v3

    .line 411
    const-string v3, "account_type=? AND account_name=?"

    .line 412
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    .line 413
    const/4 v5, 0x0

    .line 408
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 418
    :goto_1
    if-eqz v6, :cond_9

    .line 419
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 420
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getShort(I)S
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ne v1, v8, :cond_6

    move v1, v8

    .line 426
    :goto_2
    if-eqz v6, :cond_2

    .line 427
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 429
    :cond_2
    if-eqz v0, :cond_3

    .line 430
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_3
    move v8, v1

    .line 420
    goto :goto_0

    .line 416
    :cond_4
    :try_start_1
    sget-object v1, Lcom/htc/sphere/sync/SyncSettingUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ContentProviderClient is null for uri: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/htc/sphere/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 423
    :catch_0
    move-exception v7

    .line 424
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    sget-object v1, Lcom/htc/sphere/sync/SyncSettingUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isRefreshWhenOpen() error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 426
    if-eqz v6, :cond_5

    .line 427
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 429
    :cond_5
    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_0

    .end local v7           #e:Ljava/lang/Exception;
    :cond_6
    move v1, v9

    .line 420
    goto :goto_2

    .line 425
    :catchall_0
    move-exception v1

    .line 426
    if-eqz v6, :cond_7

    .line 427
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 429
    :cond_7
    if-eqz v0, :cond_8

    .line 430
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 432
    :cond_8
    throw v1

    .line 426
    :cond_9
    if-eqz v6, :cond_a

    .line 427
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 429
    :cond_a
    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_0
.end method

.method public static final setRefreshWhenOpen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .parameter "context"
    .parameter "accountType"
    .parameter "accountName"
    .parameter "refresh"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 447
    if-nez p2, :cond_1

    .line 448
    invoke-static {p0, p1, p3}, Lcom/htc/sphere/sync/SyncSettingUtil;->setRefreshWhenOpen(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 454
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 455
    .local v2, values:Landroid/content/ContentValues;
    const-string v5, "refresh_when_open"

    if-eqz p3, :cond_2

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 456
    const/4 v0, 0x0

    .line 458
    .local v0, client:Landroid/content/ContentProviderClient;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/htc/sphere/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 459
    if-eqz v0, :cond_3

    .line 461
    sget-object v3, Lcom/htc/sphere/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    .line 463
    const-string v4, "(account_type=? AND account_name=?)  OR (account_type=? AND account_name is NULL)"

    .line 465
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    aput-object p1, v5, v6

    .line 460
    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    :goto_2
    if-eqz v0, :cond_0

    .line 474
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    .end local v0           #client:Landroid/content/ContentProviderClient;
    :cond_2
    move v3, v4

    .line 455
    goto :goto_1

    .line 468
    .restart local v0       #client:Landroid/content/ContentProviderClient;
    :cond_3
    :try_start_1
    sget-object v3, Lcom/htc/sphere/sync/SyncSettingUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ContentProviderClient is null for uri: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/htc/sphere/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 470
    :catch_0
    move-exception v1

    .line 471
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    sget-object v3, Lcom/htc/sphere/sync/SyncSettingUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setRefreshWhenOpen() error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 473
    if-eqz v0, :cond_0

    .line 474
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    .line 472
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 473
    if-eqz v0, :cond_4

    .line 474
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 476
    :cond_4
    throw v3
.end method

.method public static final setRefreshWhenOpen(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 7
    .parameter "context"
    .parameter "accountType"
    .parameter "refresh"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 165
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 169
    .local v2, values:Landroid/content/ContentValues;
    const-string v5, "refresh_when_open"

    if-eqz p2, :cond_2

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    const/4 v0, 0x0

    .line 172
    .local v0, client:Landroid/content/ContentProviderClient;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/htc/sphere/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_3

    .line 175
    sget-object v3, Lcom/htc/sphere/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    .line 177
    const-string v4, "account_type=?"

    .line 178
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    .line 174
    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_2
    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    .end local v0           #client:Landroid/content/ContentProviderClient;
    :cond_2
    move v3, v4

    .line 169
    goto :goto_1

    .line 181
    .restart local v0       #client:Landroid/content/ContentProviderClient;
    :cond_3
    :try_start_1
    sget-object v3, Lcom/htc/sphere/sync/SyncSettingUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ContentProviderClient is null for uri: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/htc/sphere/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    sget-object v3, Lcom/htc/sphere/sync/SyncSettingUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setRefreshWhenOpen() error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 186
    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    .line 185
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 186
    if-eqz v0, :cond_4

    .line 187
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 189
    :cond_4
    throw v3
.end method

.method public static final setUpdateIntervalSecs(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 7
    .parameter "context"
    .parameter "accountType"
    .parameter "sec"

    .prologue
    .line 82
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 86
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "sync_interval"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 87
    const/4 v0, 0x0

    .line 89
    .local v0, client:Landroid/content/ContentProviderClient;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/htc/sphere/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_2

    .line 92
    sget-object v3, Lcom/htc/sphere/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    .line 94
    const-string v4, "account_type=?"

    .line 95
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    .line 91
    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_1
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    .line 98
    :cond_2
    :try_start_1
    sget-object v3, Lcom/htc/sphere/sync/SyncSettingUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ContentProviderClient is null for uri: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/htc/sphere/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 100
    :catch_0
    move-exception v1

    .line 101
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    sget-object v3, Lcom/htc/sphere/sync/SyncSettingUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setUpdateIntervalSecs() error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    .line 102
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 103
    if-eqz v0, :cond_3

    .line 104
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 106
    :cond_3
    throw v3
.end method

.method public static final setUpdateIntervalSecs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .parameter "context"
    .parameter "accountType"
    .parameter "accountName"
    .parameter "sec"

    .prologue
    .line 355
    if-nez p2, :cond_1

    .line 356
    invoke-static {p0, p1, p3}, Lcom/htc/sphere/sync/SyncSettingUtil;->setUpdateIntervalSecs(Landroid/content/Context;Ljava/lang/String;I)V

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 362
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 363
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "sync_interval"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 364
    const/4 v0, 0x0

    .line 366
    .local v0, client:Landroid/content/ContentProviderClient;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/htc/sphere/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 367
    if-eqz v0, :cond_2

    .line 369
    sget-object v3, Lcom/htc/sphere/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    .line 371
    const-string v4, "account_type=? AND account_name=?"

    .line 372
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    .line 368
    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :goto_1
    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    .line 375
    :cond_2
    :try_start_1
    sget-object v3, Lcom/htc/sphere/sync/SyncSettingUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ContentProviderClient is null for uri: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/htc/sphere/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 377
    :catch_0
    move-exception v1

    .line 378
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    sget-object v3, Lcom/htc/sphere/sync/SyncSettingUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setUpdateIntervalSecs() error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 380
    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    .line 379
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 380
    if-eqz v0, :cond_3

    .line 381
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 383
    :cond_3
    throw v3
.end method
