.class public final Lcom/android/settings/framework/core/security/permission/HtcPermissionManager;
.super Ljava/lang/Object;
.source "HtcPermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$1;,
        Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;
    }
.end annotation


# static fields
.field public static final DEFAULT_FLAG_CHECK_FIELD_VALUE:I = 0x0

.field public static final ERROR_FIELD_VALUE:I = -0x1869f

.field public static final EXTRA_FROM_SETTINGS_APP:Ljava/lang/String; = "EXTRA_FROM_SETTINGS_APP"

.field private static final TAG:Ljava/lang/String;

.field protected static sAppOpsManager:Landroid/app/AppOpsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static getAppOpsOpMode(Landroid/app/AppOpsManager;Lcom/android/settings/applications/AppOpsState$AppOpEntry;Lcom/android/settings/applications/AppOpsState;)I
    .locals 1
    .parameter "appOps"
    .parameter "entry"
    .parameter "state"

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager;->getAppOpsOpMode(Landroid/app/AppOpsManager;Lcom/android/settings/applications/AppOpsState$AppOpEntry;Lcom/android/settings/applications/AppOpsState;Z)I

    move-result v0

    return v0
.end method

.method public static getAppOpsOpMode(Landroid/app/AppOpsManager;Lcom/android/settings/applications/AppOpsState$AppOpEntry;Lcom/android/settings/applications/AppOpsState;Z)I
    .locals 7
    .parameter "appOps"
    .parameter "entry"
    .parameter "state"
    .parameter "bShowDebugLog"

    .prologue
    .line 185
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getOpEntry(I)Landroid/app/AppOpsManager$OpEntry;

    move-result-object v1

    .line 186
    .local v1, firstOp:Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v1}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v4

    invoke-static {v4}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v3

    .line 191
    .local v3, switchOp:I
    :try_start_0
    sget v4, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->FLAG_CHECK_REAL_MODE:I

    or-int/2addr v4, v3

    sget v5, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->FLAG_CHECK_WITHOUT_HINT:I

    or-int/2addr v4, v5

    invoke-virtual {p1}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getPackageOps()Landroid/app/AppOpsManager$PackageOps;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getPackageOps()Landroid/app/AppOpsManager$PackageOps;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 221
    .local v2, opMode:I
    :goto_0
    return v2

    .line 197
    .end local v2           #opMode:I
    :catch_0
    move-exception v0

    .line 198
    .local v0, e:Ljava/lang/Exception;
    sget-object v4, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ERROR: Not allowed! - switchOP :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sget-object v4, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v2, 0x1

    .line 203
    .restart local v2       #opMode:I
    invoke-virtual {p1}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getPackageOps()Landroid/app/AppOpsManager$PackageOps;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getPackageOps()Landroid/app/AppOpsManager$PackageOps;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5, v2}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    goto :goto_0
.end method

.method public static getAppOpsOpModeWithDebugLog(Landroid/app/AppOpsManager;Lcom/android/settings/applications/AppOpsState$AppOpEntry;Lcom/android/settings/applications/AppOpsState;)I
    .locals 1
    .parameter "appOps"
    .parameter "entry"
    .parameter "state"

    .prologue
    .line 172
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager;->getAppOpsOpMode(Landroid/app/AppOpsManager;Lcom/android/settings/applications/AppOpsState$AppOpEntry;Lcom/android/settings/applications/AppOpsState;Z)I

    move-result v0

    return v0
.end method

.method public static setAppOpsOpMode(Landroid/app/AppOpsManager;Lcom/android/settings/applications/AppOpsState;Lcom/android/settings/applications/AppOpsState$AppOpEntry;I)Z
    .locals 4
    .parameter "appOps"
    .parameter "state"
    .parameter "entry"
    .parameter "opMode"

    .prologue
    const/4 v2, 0x0

    .line 225
    invoke-virtual {p2, v2}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getOpEntry(I)Landroid/app/AppOpsManager$OpEntry;

    move-result-object v0

    .line 226
    .local v0, firstOp:Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v3

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    .line 240
    .local v1, switchOp:I
    sget-object v3, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->UNKNOWN:Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;

    invoke-virtual {v3}, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->getOpModeTypeValue()I

    move-result v3

    if-eq p3, v3, :cond_0

    sget-object v3, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->ERROR:Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;

    invoke-virtual {v3}, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->getOpModeTypeValue()I

    move-result v3

    if-eq p3, v3, :cond_0

    const v3, -0x1869f

    if-ne p3, v3, :cond_1

    .line 253
    :cond_0
    :goto_0
    return v2

    .line 248
    :cond_1
    invoke-virtual {p2}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getPackageOps()Landroid/app/AppOpsManager$PackageOps;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getPackageOps()Landroid/app/AppOpsManager$PackageOps;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3, p3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 253
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static support()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 106
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v1

    const/high16 v2, 0x40b0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isChinaRegion()Z

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-static {}, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager;->supportAlwaysAskMode()Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 114
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportAlwaysAskMode()Z
    .locals 2

    .prologue
    .line 144
    sget v0, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->MODE_HINT:I

    const v1, -0x1869f

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->isHintEnable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    :cond_0
    const/4 v0, 0x0

    .line 152
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static supportAlwaysAskModeByOp(Lcom/android/settings/applications/AppOpsState$AppOpEntry;)Z
    .locals 4
    .parameter "entry"

    .prologue
    const/4 v2, 0x0

    .line 157
    invoke-static {}, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager;->supportAlwaysAskMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 165
    :goto_0
    return v2

    .line 162
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getOpEntry(I)Landroid/app/AppOpsManager$OpEntry;

    move-result-object v0

    .line 163
    .local v0, firstOp:Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v2

    invoke-static {v2}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    .line 165
    .local v1, switchOp:I
    invoke-static {v1}, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->opDefaultHint(I)Z

    move-result v2

    goto :goto_0
.end method

.method public static supportHtcOp()Z
    .locals 1

    .prologue
    .line 125
    sget v0, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->_NUM_HTC_OP:I

    if-lez v0, :cond_0

    invoke-static {}, Lcom/android/settings/framework/reflect/android/app/HtcRefAppOpsManager;->isHintEnable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    :cond_0
    const/4 v0, 0x0

    .line 133
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
