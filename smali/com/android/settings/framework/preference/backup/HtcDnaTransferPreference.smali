.class public Lcom/android/settings/framework/preference/backup/HtcDnaTransferPreference;
.super Lcom/android/settings/framework/preference/backup/HtcAbsTransferPreference;
.source "HtcDnaTransferPreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnActivityResultListener;


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceVersion;
    value = 2.0
.end annotation


# static fields
.field protected static final ACTION_TYPE:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType; = null

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final DNA_TRANSFER_ACTIVITY:Ljava/lang/String; = "com.htc.dnatransfer.action.SETTINGS_ENTRY"

.field private static final DNA_TRANSFER_ACTIVITY_FOR_OOBE:Ljava/lang/String; = "com.htc.dnatransfer.action.OOBE_ENTRY"

.field private static final REQUEST_CODE_FOR_REDIRECTION:I = 0x1

.field private static final REQUEST_CODE_FOR_REDIRECTION_BACK:I = 0x65


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/backup/HtcDnaTransferPreference;->DEBUG:Z

    sget-object v0, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->START_ACTIVITY_FROM_FRAGMENT_FOR_RESULT:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    sput-object v0, Lcom/android/settings/framework/preference/backup/HtcDnaTransferPreference;->ACTION_TYPE:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/backup/HtcAbsTransferPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/backup/HtcAbsTransferPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/backup/HtcAbsTransferPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static getDnaTransferIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/android/settings/framework/app/HtcActivityManager;->isInSettingsTask(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.htc.dnatransfer.action.SETTINGS_ENTRY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.htc.dnatransfer.action.OOBE_ENTRY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private onActivityResult_forRedirection(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 6

    if-eqz p4, :cond_1

    const-string v2, "startbt"

    const/4 v3, 0x0

    invoke-virtual {p4, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/backup/HtcDnaTransferPreference;->getTransferDataIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v2, Lcom/android/settings/framework/content/HtcSettingsContext;->EXTRA_REQUEST_CODE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/backup/HtcDnaTransferPreference;->getRequestCodeForRedirectionBack()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.htc.dnatransfer"

    const-string v3, "backup_type"

    const-string v4, "type"

    const-string v5, "quick"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/framework/util/log/HtcLog;->ulog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/framework/preference/backup/HtcDnaTransferPreference;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/backup/HtcAbsTransferPreference;->log(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->getHost()Lcom/android/settings/framework/app/HtcIInternalHost;

    move-result-object v2

    sget-object v3, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->START_ACTIVITY_FROM_FRAGMENT_FOR_RESULT:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    invoke-static {v2, v0, v3}, Lcom/android/settings/framework/content/HtcSettingsContext;->startIntent(Lcom/android/settings/framework/app/HtcIInternalHost;Landroid/content/Intent;Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;)V

    :cond_1
    return-void
.end method

.method private onActivityResult_forRedirectionBack(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->getHost()Lcom/android/settings/framework/app/HtcIInternalHost;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/backup/HtcDnaTransferPreference;->getCustomIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/backup/HtcDnaTransferPreference;->getCustomActionType()Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/framework/content/HtcSettingsContext;->startIntent(Lcom/android/settings/framework/app/HtcIInternalHost;Landroid/content/Intent;Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;)V

    return-void
.end method


# virtual methods
.method protected getCustomActionType()Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/preference/backup/HtcDnaTransferPreference;->ACTION_TYPE:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    return-object v0
.end method

.method protected getCustomIntent()Landroid/content/Intent;
    .locals 4

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/preference/backup/HtcDnaTransferPreference;->getDnaTransferIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/android/settings/framework/content/HtcSettingsContext;->EXTRA_REQUEST_CODE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/backup/HtcDnaTransferPreference;->getRequestCodeForRedirection()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->supportActivities(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/backup/HtcDnaTransferPreference;->getTransferDataIntent()Landroid/content/Intent;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/backup/HtcDnaTransferPreference;->getCustomTitleRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitleRes()I
    .locals 1

    const v0, 0x7f0c0a63

    return v0
.end method

.method protected getCustomULogType()Ljava/lang/String;
    .locals 1

    const-string v0, "htc_and"

    return-object v0
.end method

.method protected getRequestCodeForRedirection()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getRequestCodeForRedirectionBack()I
    .locals 1

    const/16 v0, 0x65

    return v0
.end method

.method protected getTransferDataIntent()Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.futuredial.TransferData.StartType"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "platform"

    const-string v2, "htc-android"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.futuredial"

    const-string v3, "com.futuredial.ui.ViewSelectOldPhoneModel"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 1

    if-nez p3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/backup/HtcDnaTransferPreference;->getRequestCodeForRedirection()I

    move-result v0

    if-ne p2, v0, :cond_1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/framework/preference/backup/HtcDnaTransferPreference;->onActivityResult_forRedirection(Landroid/app/Activity;IILandroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/backup/HtcDnaTransferPreference;->getRequestCodeForRedirectionBack()I

    move-result v0

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/framework/preference/backup/HtcDnaTransferPreference;->onActivityResult_forRedirectionBack(Landroid/app/Activity;IILandroid/content/Intent;)V

    goto :goto_0
.end method
