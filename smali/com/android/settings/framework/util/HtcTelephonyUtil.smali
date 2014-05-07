.class public Lcom/android/settings/framework/util/HtcTelephonyUtil;
.super Ljava/lang/Object;
.source "HtcTelephonyUtil.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final CONFIG_DETECT_SIM_TYPE_IN_WORLD_PHONE:Z = false

.field private static final DEBUG_UNDER_DEVELOPMENT:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "HtcTelephonyUtil"

.field private static fld_HtcIccType_CDMA_part:Ljava/lang/reflect/Field;

.field private static fld_HtcIccType_phoneInUse:Ljava/lang/reflect/Field;

.field private static mLock:Ljava/lang/Object;

.field private static mth_TelephonyManager_generalGetterInternal:Ljava/lang/reflect/Method;

.field private static mth_TelephonyManager_getDefault:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/util/HtcTelephonyUtil;->isAsiaSku()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/framework/util/HtcTelephonyUtil;->isHkSku()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/settings/framework/util/HtcTelephonyUtil;->CONFIG_DETECT_SIM_TYPE_IN_WORLD_PHONE:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/framework/util/HtcTelephonyUtil;->mLock:Ljava/lang/Object;

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containCdmaRelatedAccount(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Ljava/lang/Boolean;
    .locals 23

    sget v18, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    and-int/lit8 v18, v18, 0x2

    if-nez v18, :cond_0

    sget-object v18, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object v18

    :cond_0
    move-object/from16 v16, p1

    if-nez v16, :cond_1

    const-string v18, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/telephony/TelephonyManager;

    :cond_1
    if-eqz v16, :cond_e

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v15

    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v15, v0, :cond_2

    const-string v18, "HtcTelephonyUtil"

    const-string v19, "Under CDMA"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v18, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    const/4 v11, 0x0

    sget-object v6, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_ACCOUNT_CAPABILITIES:[I

    array-length v14, v6

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v14, :cond_5

    aget v3, v6, v13

    and-int/lit8 v18, v3, 0x3

    move/from16 v0, v18

    if-eq v0, v3, :cond_3

    const/4 v11, 0x1

    :cond_3
    and-int/lit8 v18, v3, 0x1

    move/from16 v0, v18

    if-eq v0, v3, :cond_4

    const/4 v10, 0x1

    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_5
    sget v18, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    const/high16 v19, 0x4000

    and-int v18, v18, v19

    if-eqz v18, :cond_6

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    goto :goto_0

    :cond_6
    sget v18, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    const/high16 v19, -0x8000

    and-int v18, v18, v19

    if-nez v18, :cond_7

    sget-object v18, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_7
    if-nez v11, :cond_8

    sget-object v18, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_8
    const-string v18, "HtcTelephonyUtil"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Current Phone - "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", detect="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-boolean v20, Lcom/android/settings/framework/util/HtcTelephonyUtil;->CONFIG_DETECT_SIM_TYPE_IN_WORLD_PHONE:Z

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v18, Lcom/android/settings/framework/util/HtcTelephonyUtil;->CONFIG_DETECT_SIM_TYPE_IN_WORLD_PHONE:Z

    if-eqz v18, :cond_e

    const/4 v8, 0x0

    :try_start_0
    sget-object v18, Lcom/android/settings/framework/util/HtcTelephonyUtil;->mth_TelephonyManager_getDefault:Ljava/lang/reflect/Method;

    if-eqz v18, :cond_9

    sget-object v18, Lcom/android/settings/framework/util/HtcTelephonyUtil;->mth_TelephonyManager_generalGetterInternal:Ljava/lang/reflect/Method;

    if-nez v18, :cond_a

    :cond_9
    const-string v18, "com.htc.service.HtcTelephonyManager"

    invoke-static/range {v18 .. v18}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    :cond_a
    sget-object v19, Lcom/android/settings/framework/util/HtcTelephonyUtil;->mLock:Ljava/lang/Object;

    monitor-enter v19
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v18, Lcom/android/settings/framework/util/HtcTelephonyUtil;->mth_TelephonyManager_getDefault:Ljava/lang/reflect/Method;

    if-nez v18, :cond_b

    const-string v18, "getDefault"

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v18

    sput-object v18, Lcom/android/settings/framework/util/HtcTelephonyUtil;->mth_TelephonyManager_getDefault:Ljava/lang/reflect/Method;

    :cond_b
    sget-object v18, Lcom/android/settings/framework/util/HtcTelephonyUtil;->mth_TelephonyManager_generalGetterInternal:Ljava/lang/reflect/Method;

    if-nez v18, :cond_c

    const-string v18, "generalGetterInternal"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-class v22, Ljava/lang/String;

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-class v22, Landroid/os/Bundle;

    aput-object v22, v20, v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v18

    sput-object v18, Lcom/android/settings/framework/util/HtcTelephonyUtil;->mth_TelephonyManager_generalGetterInternal:Ljava/lang/reflect/Method;

    :cond_c
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x0

    :try_start_2
    sget-object v18, Lcom/android/settings/framework/util/HtcTelephonyUtil;->mth_TelephonyManager_generalGetterInternal:Ljava/lang/reflect/Method;

    if-eqz v18, :cond_d

    sget-object v18, Lcom/android/settings/framework/util/HtcTelephonyUtil;->mth_TelephonyManager_getDefault:Ljava/lang/reflect/Method;

    if-eqz v18, :cond_d

    sget-object v18, Lcom/android/settings/framework/util/HtcTelephonyUtil;->mth_TelephonyManager_getDefault:Ljava/lang/reflect/Method;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    sget-object v18, Lcom/android/settings/framework/util/HtcTelephonyUtil;->mth_TelephonyManager_generalGetterInternal:Ljava/lang/reflect/Method;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "AccountInfos"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    const/16 v21, 0x0

    aput-object v21, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v12, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    if-eqz v5, :cond_d

    const-string v18, "AccountInfos"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v4

    :cond_d
    if-eqz v4, :cond_e

    sget-boolean v18, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v18, :cond_f

    move-object v6, v4

    array-length v14, v6

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v14, :cond_f

    aget-object v2, v6, v13

    const-string v18, "HtcTelephonyUtil"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Acc:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :catchall_0
    move-exception v18

    :try_start_3
    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v18

    :catch_0
    move-exception v18

    :cond_e
    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_f
    const/4 v9, 0x0

    sget-object v18, Lcom/android/settings/framework/util/HtcTelephonyUtil;->fld_HtcIccType_phoneInUse:Ljava/lang/reflect/Field;

    if-eqz v18, :cond_10

    sget-object v18, Lcom/android/settings/framework/util/HtcTelephonyUtil;->fld_HtcIccType_CDMA_part:Ljava/lang/reflect/Field;

    if-nez v18, :cond_11

    :cond_10
    const-string v18, "com.android.internal.telephony.HtcIccType"

    invoke-static/range {v18 .. v18}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    :cond_11
    sget-object v19, Lcom/android/settings/framework/util/HtcTelephonyUtil;->mLock:Ljava/lang/Object;

    monitor-enter v19
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    sget-object v18, Lcom/android/settings/framework/util/HtcTelephonyUtil;->fld_HtcIccType_phoneInUse:Ljava/lang/reflect/Field;

    if-nez v18, :cond_12

    const-string v18, "phoneInUse"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v18

    sput-object v18, Lcom/android/settings/framework/util/HtcTelephonyUtil;->fld_HtcIccType_phoneInUse:Ljava/lang/reflect/Field;

    :cond_12
    sget-object v18, Lcom/android/settings/framework/util/HtcTelephonyUtil;->fld_HtcIccType_CDMA_part:Ljava/lang/reflect/Field;

    if-nez v18, :cond_13

    const-string v18, "CDMA_part"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v18

    sput-object v18, Lcom/android/settings/framework/util/HtcTelephonyUtil;->fld_HtcIccType_CDMA_part:Ljava/lang/reflect/Field;

    :cond_13
    monitor-exit v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    sget-object v18, Lcom/android/settings/framework/util/HtcTelephonyUtil;->fld_HtcIccType_phoneInUse:Ljava/lang/reflect/Field;

    if-eqz v18, :cond_e

    sget-object v18, Lcom/android/settings/framework/util/HtcTelephonyUtil;->fld_HtcIccType_CDMA_part:Ljava/lang/reflect/Field;

    if-eqz v18, :cond_e

    move-object v6, v4

    array-length v14, v6

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v14, :cond_15

    aget-object v2, v6, v13

    sget-object v18, Lcom/android/settings/framework/util/HtcTelephonyUtil;->fld_HtcIccType_phoneInUse:Ljava/lang/reflect/Field;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    if-eqz v17, :cond_14

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    if-ne v0, v15, :cond_14

    sget-object v18, Lcom/android/settings/framework/util/HtcTelephonyUtil;->fld_HtcIccType_CDMA_part:Ljava/lang/reflect/Field;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_14

    sget-object v18, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    :catchall_1
    move-exception v18

    :try_start_7
    monitor-exit v19
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v18

    :cond_14
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_15
    sget-object v18, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0
.end method

.method private static final isAsiaSku()Z
    .locals 2

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSkuId()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    const/16 v1, 0x49

    if-eq v0, v1, :cond_0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static final isHkSku()Z
    .locals 2

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSkuId()I

    move-result v0

    const/16 v1, 0x46

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
