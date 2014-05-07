.class public Lcom/android/settings/framework/preference/backup/HtcDnaTransferPreference2;
.super Lcom/android/settings/framework/preference/backup/HtcDnaTransferPreference;
.source "HtcDnaTransferPreference2.java"


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceVersion;
    value = 2.0
.end annotation


# static fields
.field private static final REQUEST_CODE_FOR_REDIRECTION:I = 0x2

.field private static final REQUEST_CODE_FOR_REDIRECTION_BACK:I = 0x66


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/backup/HtcDnaTransferPreference;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/backup/HtcDnaTransferPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/backup/HtcDnaTransferPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method


# virtual methods
.method protected getCustomSummary()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/backup/HtcDnaTransferPreference2;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0a66

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/backup/HtcDnaTransferPreference2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/backup/HtcDnaTransferPreference2;->getCustomTitleRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitleRes()I
    .locals 1

    .prologue
    .line 58
    const v0, 0x7f0c0a65

    return v0
.end method

.method protected getCustomULogType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const-string v0, "other_and"

    return-object v0
.end method

.method protected getRequestCodeForRedirection()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x2

    return v0
.end method

.method protected getRequestCodeForRedirectionBack()I
    .locals 1

    .prologue
    .line 83
    const/16 v0, 0x66

    return v0
.end method

.method protected getTransferDataIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 97
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 99
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.futuredial.TransferData.StartType"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    const-string v1, "platform"

    const-string v2, "other-android"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.futuredial"

    const-string v3, "com.futuredial.ui.DMIUI"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 103
    return-object v0
.end method
