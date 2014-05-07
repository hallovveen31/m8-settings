.class public Lcom/android/settings/framework/preference/storage/media/HtcMediaFilePhotoAndVideosPreference;
.super Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;
.source "HtcMediaFilePhotoAndVideosPreference.java"

# interfaces
.implements Lcom/android/settings/framework/os/response/HtcIResponser$OnResponseListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method


# virtual methods
.method protected getColorBarColorTint()I
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;->getImageAndVideoColor()I

    move-result v0

    return v0
.end method

.method protected bridge synthetic getCustomTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/media/HtcMediaFilePhotoAndVideosPreference;->getCustomTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/media/HtcMediaFilePhotoAndVideosPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c02d0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onGetMediaFilesSpace(Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;)V
    .locals 2
    .parameter "space"

    .prologue
    .line 66
    invoke-virtual {p1}, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->getImageAndVideoSpace()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/framework/preference/storage/media/HtcMediaFilePhotoAndVideosPreference;->setSpaceSummary(J)V

    .line 67
    return-void
.end method
