.class public Lcom/android/settings/framework/preference/storage/media/HtcMediaFileDownloadPreference;
.super Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;
.source "HtcMediaFileDownloadPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method


# virtual methods
.method protected canSelectable()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method protected getColorBarColorTint()I
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;->getDownloadColor()I

    move-result v0

    return v0
.end method

.method protected bridge synthetic getCustomTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/media/HtcMediaFileDownloadPreference;->getCustomTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/media/HtcMediaFileDownloadPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c02d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected needStorageVolume()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method protected onClick()V
    .locals 3

    .prologue
    .line 79
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.app.DownloadManager.extra_sortBySize"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/media/HtcMediaFileDownloadPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 82
    return-void
.end method

.method protected onGetMediaFilesSpace(Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;)V
    .locals 2
    .parameter "space"

    .prologue
    .line 69
    invoke-virtual {p1}, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->getDownloadSpace()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/framework/preference/storage/media/HtcMediaFileDownloadPreference;->setSpaceSummary(J)V

    .line 70
    return-void
.end method
