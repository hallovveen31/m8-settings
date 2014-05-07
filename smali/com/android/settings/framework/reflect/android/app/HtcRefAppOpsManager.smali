.class public Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;
.super Ljava/lang/Object;
.source "HtcRefAppOpsManager.java"


# static fields
.field public static final FLAG_CHECK_REAL_MODE:I

.field public static final FLAG_CHECK_WITHOUT_HINT:I

.field public static final HTC_OP_READ_MMS:I

.field public static final HTC_OP_SEND_MMS:I

.field public static final HTC_OP_WRITE_MMS:I

.field public static final MODE_HINT:I

.field private static final TAG:Ljava/lang/String;

.field public static final _NUM_HTC_OP:I

.field private static final sClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sIsHintEnableMethod:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsIsHinetEnableCached:Ljava/lang/Boolean;

.field private static sIsOpDefaultHintCached:Ljava/lang/Boolean;

.field private static sIsOpToIndexCached:Ljava/lang/Boolean;

.field private static sOpDefaultHintMethod:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static sOpToIndexMethod:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const v11, -0x1869f

    .line 27
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Settings:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-class v10, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->TAG:Ljava/lang/String;

    .line 30
    const-string v9, "android.app.AppOpsManager"

    invoke-static {v9}, Lcom/android/settings/framework/content/HtcClassManager;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    sput-object v9, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sClass:Ljava/lang/Class;

    .line 239
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 241
    .local v8, mode_hint:Ljava/lang/Integer;
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 243
    .local v1, _num_htc_op:Ljava/lang/Integer;
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 245
    .local v6, htc_op_send_mms:Ljava/lang/Integer;
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 247
    .local v5, htc_op_read_mms:Ljava/lang/Integer;
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 249
    .local v7, htc_op_write_mms:Ljava/lang/Integer;
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 251
    .local v3, flag_check_real_mode:Ljava/lang/Integer;
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 254
    .local v4, flag_check_without_hint:Ljava/lang/Integer;
    sget-object v9, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sClass:Ljava/lang/Class;

    if-eqz v9, :cond_0

    .line 258
    :try_start_0
    sget-object v9, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sClass:Ljava/lang/Class;

    const-string v10, "MODE_HINT"

    invoke-static {v9, v10}, Lcom/android/settings/framework/content/HtcClassManager;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/Integer;

    move-object v8, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_0
    :try_start_1
    sget-object v9, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sClass:Ljava/lang/Class;

    const-string v10, "_NUM_HTC_OP"

    invoke-static {v9, v10}, Lcom/android/settings/framework/content/HtcClassManager;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 274
    :goto_1
    :try_start_2
    sget-object v9, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sClass:Ljava/lang/Class;

    const-string v10, "HTC_OP_SEND_MMS"

    invoke-static {v9, v10}, Lcom/android/settings/framework/content/HtcClassManager;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/Integer;

    move-object v6, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 283
    :goto_2
    :try_start_3
    sget-object v9, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sClass:Ljava/lang/Class;

    const-string v10, "HTC_OP_READ_MMS"

    invoke-static {v9, v10}, Lcom/android/settings/framework/content/HtcClassManager;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/Integer;

    move-object v5, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 292
    :goto_3
    :try_start_4
    sget-object v9, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sClass:Ljava/lang/Class;

    const-string v10, "HTC_OP_WRITE_MMS"

    invoke-static {v9, v10}, Lcom/android/settings/framework/content/HtcClassManager;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/Integer;

    move-object v7, v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 301
    :goto_4
    :try_start_5
    sget-object v9, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sClass:Ljava/lang/Class;

    const-string v10, "FLAG_CHECK_REAL_MODE"

    invoke-static {v9, v10}, Lcom/android/settings/framework/content/HtcClassManager;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 310
    :goto_5
    :try_start_6
    sget-object v9, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sClass:Ljava/lang/Class;

    const-string v10, "FLAG_CHECK_WITHOUT_HINT"

    invoke-static {v9, v10}, Lcom/android/settings/framework/content/HtcClassManager;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/Integer;

    move-object v4, v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 321
    :cond_0
    :goto_6
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sput v9, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->MODE_HINT:I

    .line 322
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sput v9, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->_NUM_HTC_OP:I

    .line 323
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sput v9, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->HTC_OP_SEND_MMS:I

    .line 324
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sput v9, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->HTC_OP_READ_MMS:I

    .line 325
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sput v9, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->HTC_OP_WRITE_MMS:I

    .line 326
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sput v9, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->FLAG_CHECK_REAL_MODE:I

    .line 327
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sput v9, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->FLAG_CHECK_WITHOUT_HINT:I

    .line 328
    return-void

    .line 260
    :catch_0
    move-exception v2

    .line 261
    .local v2, e:Ljava/lang/Exception;
    sget-object v9, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 268
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 269
    .restart local v2       #e:Ljava/lang/Exception;
    sget-object v9, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 277
    .end local v2           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 278
    .restart local v2       #e:Ljava/lang/Exception;
    sget-object v9, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 286
    .end local v2           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 287
    .restart local v2       #e:Ljava/lang/Exception;
    sget-object v9, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 295
    .end local v2           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .line 296
    .restart local v2       #e:Ljava/lang/Exception;
    sget-object v9, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 304
    .end local v2           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v2

    .line 305
    .restart local v2       #e:Ljava/lang/Exception;
    sget-object v9, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 313
    .end local v2           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v2

    .line 314
    .restart local v2       #e:Ljava/lang/Exception;
    sget-object v9, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isHintEnable()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 171
    sget-object v6, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sIsIsHinetEnableCached:Ljava/lang/Boolean;

    if-nez v6, :cond_0

    .line 172
    sget-object v6, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sClass:Ljava/lang/Class;

    const-string v8, "isHintEnable"

    new-array v9, v7, [Ljava/lang/Class;

    invoke-static {v6, v8, v9}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 176
    .local v3, method:Ljava/lang/reflect/Method;
    new-instance v6, Ljava/lang/ref/SoftReference;

    invoke-direct {v6, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v6, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sIsHintEnableMethod:Ljava/lang/ref/SoftReference;

    .line 177
    if-eqz v3, :cond_3

    const/4 v6, 0x1

    :goto_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sIsIsHinetEnableCached:Ljava/lang/Boolean;

    .line 181
    :cond_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 183
    .local v4, returnValue:Ljava/lang/Boolean;
    sget-object v6, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sIsIsHinetEnableCached:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 184
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 185
    .local v1, context:Landroid/content/Context;
    const-string v6, "appops"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager;

    .line 187
    .local v5, service:Landroid/app/AppOpsManager;
    sget-object v6, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sIsHintEnableMethod:Ljava/lang/ref/SoftReference;

    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #method:Ljava/lang/reflect/Method;
    check-cast v3, Ljava/lang/reflect/Method;

    .line 189
    .restart local v3       #method:Ljava/lang/reflect/Method;
    if-nez v3, :cond_1

    .line 191
    sget-object v6, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sClass:Ljava/lang/Class;

    const-string v8, "isHintEnable"

    new-array v7, v7, [Ljava/lang/Class;

    invoke-static {v6, v8, v7}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 195
    new-instance v6, Ljava/lang/ref/SoftReference;

    invoke-direct {v6, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v6, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sIsHintEnableMethod:Ljava/lang/ref/SoftReference;

    .line 200
    :cond_1
    const/4 v6, 0x0

    :try_start_0
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v6}, Lcom/android/settings/framework/content/HtcClassManager;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/Boolean;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .end local v1           #context:Landroid/content/Context;
    .end local v5           #service:Landroid/app/AppOpsManager;
    :cond_2
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    return v6

    .end local v4           #returnValue:Ljava/lang/Boolean;
    :cond_3
    move v6, v7

    .line 177
    goto :goto_0

    .line 201
    .restart local v1       #context:Landroid/content/Context;
    .restart local v4       #returnValue:Ljava/lang/Boolean;
    .restart local v5       #service:Landroid/app/AppOpsManager;
    :catch_0
    move-exception v2

    .line 202
    .local v2, e:Ljava/lang/Exception;
    sget-object v6, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->TAG:Ljava/lang/String;

    const-string v7, " ERROR: Failed to get return value of isHintEnable()!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    sget-object v6, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 209
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v5           #service:Landroid/app/AppOpsManager;
    :cond_4
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_2

    .line 210
    sget-object v6, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->TAG:Ljava/lang/String;

    const-string v7, " ERROR: NO isHintEnable()!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static opDefaultHint(I)Z
    .locals 13
    .parameter "op"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 43
    sget-object v7, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sIsOpDefaultHintCached:Ljava/lang/Boolean;

    if-nez v7, :cond_0

    .line 44
    sget-object v7, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sClass:Ljava/lang/Class;

    const-string v10, "opDefaultHint"

    new-array v11, v8, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v9

    invoke-static {v7, v10, v11}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 49
    .local v4, method:Ljava/lang/reflect/Method;
    new-instance v7, Ljava/lang/ref/SoftReference;

    invoke-direct {v7, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v7, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sOpDefaultHintMethod:Ljava/lang/ref/SoftReference;

    .line 50
    if-eqz v4, :cond_3

    move v7, v8

    :goto_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    sput-object v7, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sIsOpDefaultHintCached:Ljava/lang/Boolean;

    .line 54
    .end local v4           #method:Ljava/lang/reflect/Method;
    :cond_0
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 56
    .local v5, returnValue:Ljava/lang/Boolean;
    sget-object v7, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sIsOpDefaultHintCached:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 57
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v2

    .line 58
    .local v2, context:Landroid/content/Context;
    const-string v7, "appops"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager;

    .line 60
    .local v6, service:Landroid/app/AppOpsManager;
    sget-object v7, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sOpDefaultHintMethod:Ljava/lang/ref/SoftReference;

    invoke-virtual {v7}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    .line 62
    .restart local v4       #method:Ljava/lang/reflect/Method;
    if-nez v4, :cond_1

    .line 64
    sget-object v7, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sClass:Ljava/lang/Class;

    const-string v10, "opDefaultHint"

    new-array v8, v8, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v8, v9

    invoke-static {v7, v10, v8}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 69
    new-instance v7, Ljava/lang/ref/SoftReference;

    invoke-direct {v7, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v7, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sOpDefaultHintMethod:Ljava/lang/ref/SoftReference;

    .line 75
    :cond_1
    const/4 v7, 0x1

    :try_start_0
    new-array v1, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v7

    .line 76
    .local v1, args:[Ljava/lang/Object;
    invoke-static {v4, v1}, Lcom/android/settings/framework/content/HtcClassManager;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/Boolean;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v1           #args:[Ljava/lang/Object;
    .end local v2           #context:Landroid/content/Context;
    .end local v4           #method:Ljava/lang/reflect/Method;
    .end local v6           #service:Landroid/app/AppOpsManager;
    :cond_2
    :goto_1
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    return v7

    .end local v5           #returnValue:Ljava/lang/Boolean;
    .restart local v4       #method:Ljava/lang/reflect/Method;
    :cond_3
    move v7, v9

    .line 50
    goto :goto_0

    .line 78
    .restart local v2       #context:Landroid/content/Context;
    .restart local v5       #returnValue:Ljava/lang/Boolean;
    .restart local v6       #service:Landroid/app/AppOpsManager;
    :catch_0
    move-exception v3

    .line 79
    .local v3, e:Ljava/lang/Exception;
    sget-object v7, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->TAG:Ljava/lang/String;

    const-string v8, " ERROR: Failed to get return value of opDefaultHint()!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sget-object v7, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 85
    .end local v2           #context:Landroid/content/Context;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #method:Ljava/lang/reflect/Method;
    .end local v6           #service:Landroid/app/AppOpsManager;
    :cond_4
    sget-boolean v7, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v7, :cond_2

    .line 86
    sget-object v7, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->TAG:Ljava/lang/String;

    const-string v8, " ERROR: NO opDefaultHint()!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static opToIndex(I)I
    .locals 13
    .parameter "op"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 107
    sget-object v7, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sIsOpToIndexCached:Ljava/lang/Boolean;

    if-nez v7, :cond_0

    .line 108
    sget-object v7, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sClass:Ljava/lang/Class;

    const-string v10, "opToIndex"

    new-array v11, v8, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v9

    invoke-static {v7, v10, v11}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 113
    .local v4, method:Ljava/lang/reflect/Method;
    new-instance v7, Ljava/lang/ref/SoftReference;

    invoke-direct {v7, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v7, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sOpToIndexMethod:Ljava/lang/ref/SoftReference;

    .line 114
    if-eqz v4, :cond_3

    move v7, v8

    :goto_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    sput-object v7, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sIsOpToIndexCached:Ljava/lang/Boolean;

    .line 118
    .end local v4           #method:Ljava/lang/reflect/Method;
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 120
    .local v5, returnValue:Ljava/lang/Integer;
    sget-object v7, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sIsOpToIndexCached:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 121
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v2

    .line 122
    .local v2, context:Landroid/content/Context;
    const-string v7, "appops"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager;

    .line 124
    .local v6, service:Landroid/app/AppOpsManager;
    sget-object v7, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sOpToIndexMethod:Ljava/lang/ref/SoftReference;

    invoke-virtual {v7}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    .line 126
    .restart local v4       #method:Ljava/lang/reflect/Method;
    if-nez v4, :cond_1

    .line 128
    sget-object v7, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sClass:Ljava/lang/Class;

    const-string v10, "opToIndex"

    new-array v8, v8, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v8, v9

    invoke-static {v7, v10, v8}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 133
    new-instance v7, Ljava/lang/ref/SoftReference;

    invoke-direct {v7, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v7, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sOpToIndexMethod:Ljava/lang/ref/SoftReference;

    .line 137
    :cond_1
    const/4 v7, 0x1

    :try_start_0
    new-array v1, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v7

    .line 138
    .local v1, args:[Ljava/lang/Object;
    invoke-static {v4, v1}, Lcom/android/settings/framework/content/HtcClassManager;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/Integer;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v1           #args:[Ljava/lang/Object;
    .end local v2           #context:Landroid/content/Context;
    .end local v4           #method:Ljava/lang/reflect/Method;
    .end local v6           #service:Landroid/app/AppOpsManager;
    :cond_2
    :goto_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    return v7

    .end local v5           #returnValue:Ljava/lang/Integer;
    .restart local v4       #method:Ljava/lang/reflect/Method;
    :cond_3
    move v7, v9

    .line 114
    goto :goto_0

    .line 140
    .restart local v2       #context:Landroid/content/Context;
    .restart local v5       #returnValue:Ljava/lang/Integer;
    .restart local v6       #service:Landroid/app/AppOpsManager;
    :catch_0
    move-exception v3

    .line 141
    .local v3, e:Ljava/lang/Exception;
    sget-object v7, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->TAG:Ljava/lang/String;

    const-string v8, " ERROR: Failed to get return value of opToIndex()!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    sget-object v7, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 148
    .end local v2           #context:Landroid/content/Context;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #method:Ljava/lang/reflect/Method;
    .end local v6           #service:Landroid/app/AppOpsManager;
    :cond_4
    sget-boolean v7, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v7, :cond_2

    .line 149
    sget-object v7, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->TAG:Ljava/lang/String;

    const-string v8, " ERROR: NO opToIndex()!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
