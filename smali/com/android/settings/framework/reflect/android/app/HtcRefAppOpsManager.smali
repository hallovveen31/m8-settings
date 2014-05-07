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

    const/4 v12, 0x0

    const v11, -0x1869f

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

    const-string v9, "android.app.AppOpsManager"

    invoke-static {v9}, Lcom/android/settings/framework/content/HtcClassManager;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    sput-object v9, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sClass:Ljava/lang/Class;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v9, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sClass:Ljava/lang/Class;

    if-eqz v9, :cond_0

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

    :cond_0
    :goto_6
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sput v9, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->MODE_HINT:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sput v9, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->_NUM_HTC_OP:I

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sput v9, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->HTC_OP_SEND_MMS:I

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sput v9, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->HTC_OP_READ_MMS:I

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sput v9, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->HTC_OP_WRITE_MMS:I

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sput v9, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->FLAG_CHECK_REAL_MODE:I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sput v9, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->FLAG_CHECK_WITHOUT_HINT:I

    return-void

    :catch_0
    move-exception v2

    sget-object v9, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_1
    move-exception v2

    sget-object v9, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_2
    move-exception v2

    sget-object v9, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catch_3
    move-exception v2

    sget-object v9, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catch_4
    move-exception v2

    sget-object v9, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :catch_5
    move-exception v2

    sget-object v9, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :catch_6
    move-exception v2

    sget-object v9, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isHintEnable()Z
    .locals 10

    const/4 v7, 0x0

    sget-object v6, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sIsIsHinetEnableCached:Ljava/lang/Boolean;

    if-nez v6, :cond_0

    sget-object v6, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sClass:Ljava/lang/Class;

    const-string v8, "isHintEnable"

    new-array v9, v7, [Ljava/lang/Class;

    invoke-static {v6, v8, v9}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-instance v6, Ljava/lang/ref/SoftReference;

    invoke-direct {v6, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v6, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sIsHintEnableMethod:Ljava/lang/ref/SoftReference;

    if-eqz v3, :cond_3

    const/4 v6, 0x1

    :goto_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sIsIsHinetEnableCached:Ljava/lang/Boolean;

    :cond_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sget-object v6, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sIsIsHinetEnableCached:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v6, "appops"

    invoke-virtual {v1, v6}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager;

    sget-object v6, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sIsHintEnableMethod:Ljava/lang/ref/SoftReference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    if-nez v3, :cond_1

    sget-object v6, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sClass:Ljava/lang/Class;

    const-string v8, "isHintEnable"

    new-array v7, v7, [Ljava/lang/Class;

    invoke-static {v6, v8, v7}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-instance v6, Ljava/lang/ref/SoftReference;

    invoke-direct {v6, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v6, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sIsHintEnableMethod:Ljava/lang/ref/SoftReference;

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

    :cond_2
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    return v6

    :cond_3
    move v6, v7

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v6, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->TAG:Ljava/lang/String;

    const-string v7, " ERROR: Failed to get return value of isHintEnable()!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_2

    sget-object v6, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->TAG:Ljava/lang/String;

    const-string v7, " ERROR: NO isHintEnable()!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static opDefaultHint(I)Z
    .locals 13

    const/4 v8, 0x1

    const/4 v9, 0x0

    sget-object v7, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sIsOpDefaultHintCached:Ljava/lang/Boolean;

    if-nez v7, :cond_0

    sget-object v7, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sClass:Ljava/lang/Class;

    const-string v10, "opDefaultHint"

    new-array v11, v8, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v9

    invoke-static {v7, v10, v11}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-instance v7, Ljava/lang/ref/SoftReference;

    invoke-direct {v7, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v7, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sOpDefaultHintMethod:Ljava/lang/ref/SoftReference;

    if-eqz v4, :cond_3

    move v7, v8

    :goto_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    sput-object v7, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sIsOpDefaultHintCached:Ljava/lang/Boolean;

    :cond_0
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    sget-object v7, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sIsOpDefaultHintCached:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v7, "appops"

    invoke-virtual {v2, v7}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager;

    sget-object v7, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sOpDefaultHintMethod:Ljava/lang/ref/SoftReference;

    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    if-nez v4, :cond_1

    sget-object v7, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sClass:Ljava/lang/Class;

    const-string v10, "opDefaultHint"

    new-array v8, v8, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v8, v9

    invoke-static {v7, v10, v8}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-instance v7, Ljava/lang/ref/SoftReference;

    invoke-direct {v7, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v7, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sOpDefaultHintMethod:Ljava/lang/ref/SoftReference;

    :cond_1
    const/4 v7, 0x1

    :try_start_0
    new-array v1, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v7

    invoke-static {v4, v1}, Lcom/android/settings/framework/content/HtcClassManager;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/Boolean;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    return v7

    :cond_3
    move v7, v9

    goto :goto_0

    :catch_0
    move-exception v3

    sget-object v7, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->TAG:Ljava/lang/String;

    const-string v8, " ERROR: Failed to get return value of opDefaultHint()!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    sget-boolean v7, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v7, :cond_2

    sget-object v7, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->TAG:Ljava/lang/String;

    const-string v8, " ERROR: NO opDefaultHint()!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static opToIndex(I)I
    .locals 13

    const/4 v8, 0x1

    const/4 v9, 0x0

    sget-object v7, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sIsOpToIndexCached:Ljava/lang/Boolean;

    if-nez v7, :cond_0

    sget-object v7, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sClass:Ljava/lang/Class;

    const-string v10, "opToIndex"

    new-array v11, v8, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v9

    invoke-static {v7, v10, v11}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-instance v7, Ljava/lang/ref/SoftReference;

    invoke-direct {v7, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v7, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sOpToIndexMethod:Ljava/lang/ref/SoftReference;

    if-eqz v4, :cond_3

    move v7, v8

    :goto_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    sput-object v7, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sIsOpToIndexCached:Ljava/lang/Boolean;

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v7, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sIsOpToIndexCached:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v7, "appops"

    invoke-virtual {v2, v7}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager;

    sget-object v7, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sOpToIndexMethod:Ljava/lang/ref/SoftReference;

    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    if-nez v4, :cond_1

    sget-object v7, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sClass:Ljava/lang/Class;

    const-string v10, "opToIndex"

    new-array v8, v8, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v8, v9

    invoke-static {v7, v10, v8}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-instance v7, Ljava/lang/ref/SoftReference;

    invoke-direct {v7, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v7, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->sOpToIndexMethod:Ljava/lang/ref/SoftReference;

    :cond_1
    const/4 v7, 0x1

    :try_start_0
    new-array v1, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v7

    invoke-static {v4, v1}, Lcom/android/settings/framework/content/HtcClassManager;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/Integer;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    return v7

    :cond_3
    move v7, v9

    goto :goto_0

    :catch_0
    move-exception v3

    sget-object v7, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->TAG:Ljava/lang/String;

    const-string v8, " ERROR: Failed to get return value of opToIndex()!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    sget-boolean v7, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v7, :cond_2

    sget-object v7, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->TAG:Ljava/lang/String;

    const-string v8, " ERROR: NO opToIndex()!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
