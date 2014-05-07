.class public Lcom/android/settings/framework/preference/backup/HtcDefaultTransferPreference;
.super Lcom/android/settings/framework/preference/backup/HtcAbsTransferPreference;
.source "HtcDefaultTransferPreference.java"


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceVersion;
    value = 2.0
.end annotation


# static fields
.field private static final ACTION_TYPE:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->START_ACTIVITY_FROM_FRAGMENT_FOR_RESULT:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    sput-object v0, Lcom/android/settings/framework/preference/backup/HtcDefaultTransferPreference;->ACTION_TYPE:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/backup/HtcAbsTransferPreference;-><init>(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/backup/HtcAbsTransferPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/backup/HtcAbsTransferPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public static getDefaultTransferIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 91
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 97
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.futuredial"

    const-string v3, "com.futuredial.ui.DMIUI"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 99
    const-string v1, "com.futuredial.TransferData.StartType"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    const-string v1, "platform"

    const-string v2, "all"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    return-object v0
.end method


# virtual methods
.method protected getCustomActionType()Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/settings/framework/preference/backup/HtcDefaultTransferPreference;->ACTION_TYPE:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    return-object v0
.end method

.method protected getCustomIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Lcom/android/settings/framework/preference/backup/HtcDefaultTransferPreference;->getDefaultTransferIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomSummary()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/backup/HtcDefaultTransferPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0a6a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/backup/HtcDefaultTransferPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/backup/HtcDefaultTransferPreference;->getCustomTitleRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitleRes()I
    .locals 1

    .prologue
    .line 62
    const v0, 0x7f0c0a69

    return v0
.end method

.method protected getCustomULogType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    const-string v0, "other"

    return-object v0
.end method
