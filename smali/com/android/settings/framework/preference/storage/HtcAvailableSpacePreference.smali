.class public Lcom/android/settings/framework/preference/storage/HtcAvailableSpacePreference;
.super Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;
.source "HtcAvailableSpacePreference.java"

# interfaces
.implements Lcom/android/settings/framework/os/response/HtcIResponser$OnResponseListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/storage/HtcAvailableSpacePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    const v0, 0x101008d

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/framework/preference/storage/HtcAvailableSpacePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method


# virtual methods
.method protected getColorBarColorTint()I
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;->getAvailableColor()I

    move-result v0

    return v0
.end method

.method protected bridge synthetic getCustomTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcAvailableSpacePreference;->getCustomTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcAvailableSpacePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0e68

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isAddingItselfAllowed()Z
    .locals 4

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcAvailableSpacePreference;->getSpace()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onGetTotalAvailableSpace(Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;)V
    .locals 2
    .parameter "space"

    .prologue
    .line 64
    iget-wide v0, p1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->availableSpace:J

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/framework/preference/storage/HtcAvailableSpacePreference;->setSpaceSummary(J)V

    .line 65
    return-void
.end method

.method protected supportColorFilterOnTitle()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method
