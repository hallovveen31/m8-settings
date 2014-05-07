.class public abstract Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;
.super Lcom/android/settings/framework/preference/HtcAbsPreference;
.source "HtcAbsMediaFilePreference.java"

# interfaces
.implements Lcom/android/settings/framework/preference/storage/media/HtcIMediaFilePreference;


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceVersion;
    value = 2.0
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference$1;,
        Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference$PreferenceView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/framework/preference/HtcAbsPreference",
        "<",
        "Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference$PreferenceView;",
        "Landroid/view/View;",
        "Landroid/widget/TextView;",
        ">;",
        "Lcom/android/settings/framework/preference/storage/media/HtcIMediaFilePreference;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

.field private volatile mIsStatfsReady:Z

.field private volatile mParent:Lcom/htc/preference/HtcPreferenceCategory;

.field private volatile mSpace:J

.field private volatile mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsPreference;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    sget-object v1, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->mIsStatfsReady:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->mSpace:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    sget-object v1, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->mIsStatfsReady:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->mSpace:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    sget-object v1, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->mIsStatfsReady:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->mSpace:J

    return-void
.end method


# virtual methods
.method public final addItself()V
    .locals 4

    iget-object v2, p0, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->mParent:Lcom/htc/preference/HtcPreferenceCategory;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->mParent:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v2, p0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    invoke-virtual {v3}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->getFullTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v3}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "Forgot to call setParent(HtcPreferenceCategory)"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/android/settings/framework/util/log/HtcLog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final attachStorageVolume(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v0, p0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->addOnResponseListener(Lcom/android/settings/framework/os/response/HtcIResponser$OnResponseListener;)Z

    return-void
.end method

.method protected canSelectable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getColorBarColorTint()I
    .locals 1

    const/high16 v0, -0x1

    return v0
.end method

.method protected bridge synthetic getCustomTitle()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->getCustomTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomTitleRes()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final getSpace()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->mSpace:J

    return-wide v0
.end method

.method protected final getStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    return-object v0
.end method

.method protected isAddingItselfAllowed()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->mSpace:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final isRemovingItselfAllowed()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->isAddingItselfAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final isStatfsReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->mIsStatfsReady:Z

    return v0
.end method

.method protected final log(Ljava/lang/String;)V
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    invoke-virtual {v2}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->getFullTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v3}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/settings/framework/util/log/HtcLog;->getPidTidTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method protected needStorageVolume()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final onCreatePreferenceView(Landroid/view/ViewGroup;)Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference$PreferenceView;
    .locals 2

    new-instance v0, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference$PreferenceView;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference$PreferenceView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected bridge synthetic onCreatePreferenceView(Landroid/view/ViewGroup;)Lcom/android/settings/framework/widget/HtcAbsPreferenceView;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->onCreatePreferenceView(Landroid/view/ViewGroup;)Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference$PreferenceView;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->supportColorBar()Z

    move-result v10

    if-nez v10, :cond_1

    new-instance v9, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference$PreferenceView;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference$PreferenceView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->supportColorFilterOnTitle()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v9}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->getColorBarColorTint()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    :goto_0
    return-object v9

    :cond_1
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-super {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    new-instance v1, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference$PreferenceView$ColorBar;

    invoke-direct {v1, v3}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference$PreferenceView$ColorBar;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->getColorBarColorTint()I

    move-result v10

    invoke-virtual {v2, v10}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v10

    invoke-virtual {v1}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference$PreferenceView$ColorBar;->getDesiredWidth()I

    move-result v11

    sub-int v5, v10, v11

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    invoke-virtual {v4, v5, v8, v7, v0}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object v9, v6

    goto :goto_0
.end method

.method protected onGetAppsPartialSpace(J)V
    .locals 0

    return-void
.end method

.method protected onGetAppsSpace(J)V
    .locals 0

    return-void
.end method

.method protected onGetMediaFilesSpace(Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;)V
    .locals 0

    return-void
.end method

.method protected onGetTotalAvailableSpace(Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;)V
    .locals 0

    return-void
.end method

.method protected onInitializeInBackground(Landroid/content/Context;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsPreference;->onInitializeInBackground(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->isAddingItselfAllowed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0e6b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsPreference;->setSummaryInForeground(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->needStorageVolume()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    invoke-virtual {v0}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->getFullTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Forgot to call attachStorageVolume(...)"

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void

    :cond_2
    sget-boolean v0, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The space ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->mSpace:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") has been set."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onMediaScannerStateChanged(Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver$EventParams;)V
    .locals 0

    return-void
.end method

.method public final onResponse(Landroid/os/Message;)V
    .locals 5

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-boolean v1, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MESSAGE_GET_TOTAL_AVAILABLE_SPACE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;

    invoke-static {v0, v1}, Lcom/android/settings/framework/core/storage/HtcStatFs;->getFormattedSpace(Landroid/content/Context;Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->onGetTotalAvailableSpace(Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;)V

    goto :goto_0

    :pswitch_1
    sget-boolean v1, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->DEBUG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MESSAGE_GET_APPS_PARTIAL_SPACE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/android/settings/framework/core/storage/HtcStatFs;->getFormattedSpace(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->log(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->onGetAppsPartialSpace(J)V

    goto :goto_0

    :pswitch_2
    sget-boolean v1, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MESSAGE_GET_APPS_SPACE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/android/settings/framework/core/storage/HtcStatFs;->getFormattedSpace(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->log(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->onGetAppsSpace(J)V

    goto/16 :goto_0

    :pswitch_3
    sget-boolean v1, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->DEBUG:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MESSAGE_GET_MEDIA_FILES_SPACE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->log(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->onGetMediaFilesSpace(Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;)V

    goto/16 :goto_0

    :pswitch_4
    sget-boolean v1, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->DEBUG:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MESSAGE_ON_STORAGE_STATE_CHANGED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->log(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->onStorageStateChanged(Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;)V

    goto/16 :goto_0

    :pswitch_5
    sget-boolean v1, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->DEBUG:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MESSAGE_ON_MEDIA_SCANNER_STATE_CHANGED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->log(Ljava/lang/String;)V

    :cond_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver$EventParams;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->onMediaScannerStateChanged(Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver$EventParams;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onStorageStateChanged(Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;)V
    .locals 2

    sget-object v0, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference$1;->$SwitchMap$com$android$settings$framework$core$storage$HtcIStorageVolume$MediaState:[I

    iget-object v1, p1, Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;->newState:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->removeItself()V

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->isAddingItselfAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->addItself()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final removeItself()V
    .locals 4

    iget-object v2, p0, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->mParent:Lcom/htc/preference/HtcPreferenceCategory;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->mParent:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v2, p0}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    invoke-virtual {v3}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->getFullTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v3}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "Forgot to call setParent(HtcPreferenceCategory)"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/android/settings/framework/util/log/HtcLog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final setParent(Lcom/htc/preference/HtcPreferenceCategory;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->mParent:Lcom/htc/preference/HtcPreferenceCategory;

    return-void
.end method

.method protected final setSpaceSummary(J)V
    .locals 3

    iput-wide p1, p0, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->mSpace:J

    sget-boolean v1, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSpaceSummary("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->log(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->isAddingItselfAllowed()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/settings/framework/core/storage/HtcStatFs;->getFormattedSpace(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsPreference;->setSummaryInForeground(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->addItself()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->isRemovingItselfAllowed()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;->removeItself()V

    goto :goto_0
.end method

.method protected supportColorBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected supportColorFilterOnTitle()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
