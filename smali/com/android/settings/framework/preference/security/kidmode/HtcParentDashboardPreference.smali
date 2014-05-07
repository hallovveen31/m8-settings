.class public Lcom/android/settings/framework/preference/security/kidmode/HtcParentDashboardPreference;
.super Lcom/android/settings/framework/preference/HtcAbsActionPreference;
.source "HtcParentDashboardPreference.java"


# static fields
.field private static final KID_MODE_PACKAGE_NAME:Ljava/lang/String; = "com.zoodles.kidmode"

.field private static final KID_MODE_PARENT_DASHBOARD_ACTIVITY:Ljava/lang/String; = "com.zoodles.kidmode.activity.parent.ParentDashboardLauncherActivity"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public static getParentDashboardIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 79
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.zoodles.kidmode"

    const-string v3, "com.zoodles.kidmode.activity.parent.ParentDashboardLauncherActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 83
    return-object v0
.end method


# virtual methods
.method protected getCustomActionType()Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->START_ACTIVITY:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    return-object v0
.end method

.method protected getCustomIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lcom/android/settings/framework/preference/security/kidmode/HtcParentDashboardPreference;->getParentDashboardIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomSummary()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/kidmode/HtcParentDashboardPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c01e9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/kidmode/HtcParentDashboardPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c01e8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitleRes()I
    .locals 1

    .prologue
    .line 54
    const v0, 0x7f0c01e8

    return v0
.end method
