.class public Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;
.super Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;
.source "HtcStorageMultiColorBarPreference.java"

# interfaces
.implements Lcom/android/settings/framework/os/response/HtcIResponser$OnResponseListener;
.implements Lcom/android/settings/framework/preference/storage/HtcIStorageVolumePreference;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference$1;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final MESSAGE_REFRESH_MULTI_COLOR_BAR:I = 0x1001

.field private static final MESSAGE_SET_MULTI_COLOR_BAR_VISIBILITY:I = 0x1002

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppsSpace:Ljava/lang/Long;

.field private mDownloadSpace:Ljava/lang/Long;

.field private mImageAndVideoSpace:Ljava/lang/Long;

.field private mMusicSpace:Ljava/lang/Long;

.field private mTotalSpace:Ljava/lang/Long;

.field private mUsedSpace:Ljava/lang/Long;

.field private mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private onRefreshMultiColorBar()V
    .locals 7

    const-wide/16 v5, 0x0

    sget-boolean v3, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->DEBUG:Z

    if-eqz v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRefreshMultiColorBar, mTotalSpace:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mTotalSpace:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mAppsSpace:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mAppsSpace:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mImageAndVideoSpace:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mImageAndVideoSpace:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mMusicSpac:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mMusicSpace:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mDownloadSpace:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mDownloadSpace:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mUsedSpace:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mUsedSpace:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mTotalSpace:Ljava/lang/Long;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mTotalSpace:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v5, v3

    if-ltz v3, :cond_9

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->setTotal(J)Z

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mAppsSpace:Ljava/lang/Long;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mAppsSpace:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->setAppsSpace(J)Z

    :cond_2
    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mImageAndVideoSpace:Ljava/lang/Long;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mImageAndVideoSpace:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->setImageAndVideoSpace(J)Z

    :cond_3
    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mMusicSpace:Ljava/lang/Long;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mMusicSpace:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->setMusicSpace(J)Z

    :cond_4
    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mDownloadSpace:Ljava/lang/Long;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mDownloadSpace:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->setDownloadSpace(J)Z

    :cond_5
    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mUsedSpace:Ljava/lang/Long;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mUsedSpace:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v3, v5, v1

    if-ltz v3, :cond_a

    const-wide/16 v1, 0x0

    :cond_6
    :goto_1
    sget-boolean v3, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->DEBUG:Z

    if-eqz v3, :cond_7

    sget-object v3, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setOtherSpace:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->setOtherSpace(J)Z

    :cond_8
    return-void

    :cond_9
    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mTotalSpace:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->setTotal(J)Z

    goto :goto_0

    :cond_a
    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mAppsSpace:Ljava/lang/Long;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mAppsSpace:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    :cond_b
    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mMusicSpace:Ljava/lang/Long;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mMusicSpace:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    :cond_c
    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mImageAndVideoSpace:Ljava/lang/Long;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mImageAndVideoSpace:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    :cond_d
    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mDownloadSpace:Ljava/lang/Long;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mDownloadSpace:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    goto :goto_1
.end method

.method private onSetMultiColorBarVisibilty(I)V
    .locals 3

    sget-boolean v0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onSetMultiColorBarVisibilty(): type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getType()Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->hideMultiColorBar(Z)V

    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private refreshMultiColorBar()V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x1001

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    const-string v2, "refreshMultiColorBar()"

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->acquireUiHandlerFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setMultiColorBarVisibility(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x1002

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    const-string v2, "setMultiColorBarVisibility()"

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->acquireUiHandlerFailed(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public attachStorageVolume(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v0, p0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->addOnResponseListener(Lcom/android/settings/framework/os/response/HtcIResponser$OnResponseListener;)Z

    return-void
.end method

.method protected getCustomTitle()Ljava/lang/CharSequence;
    .locals 4

    iget-object v2, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->getState(Ljava/lang/String;)Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    move-result-object v1

    sget-object v2, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference$1;->$SwitchMap$com$android$settings$framework$core$storage$HtcIStorageVolume$MediaState:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    const v0, 0x7f0c08b7

    :goto_0
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :pswitch_0
    const v0, 0x7f0c0e6b

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    return-object v0
.end method

.method protected onCreatedPreferenceView(Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference$PreferenceView;Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsPreference;->onCreatedPreferenceView(Lcom/android/settings/framework/widget/HtcAbsPreferenceView;Landroid/view/View;Landroid/view/View;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->updateState()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onCreatedPreferenceView(Lcom/android/settings/framework/widget/HtcAbsPreferenceView;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    check-cast p1, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference$PreferenceView;

    check-cast p2, Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->onCreatedPreferenceView(Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference$PreferenceView;Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;Landroid/view/View;)V

    return-void
.end method

.method protected onGetAppsSpace(J)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mAppsSpace:Ljava/lang/Long;

    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->refreshMultiColorBar()V

    return-void
.end method

.method protected onGetMediaFilesSpace(Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->getDownloadSpace()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mDownloadSpace:Ljava/lang/Long;

    invoke-virtual {p1}, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->getMusicSpace()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mMusicSpace:Ljava/lang/Long;

    invoke-virtual {p1}, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->getImageAndVideoSpace()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mImageAndVideoSpace:Ljava/lang/Long;

    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->refreshMultiColorBar()V

    return-void
.end method

.method protected onGetTotalAvailableSpace(Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;)V
    .locals 6

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v4}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getState()Ljava/lang/String;

    move-result-object v2

    const-string v1, ""

    iget-wide v4, p1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mTotalSpace:Ljava/lang/Long;

    invoke-virtual {p1}, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->getUsedSpace()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mUsedSpace:Ljava/lang/Long;

    sget-boolean v4, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->DEBUG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onGetTotalAvailableSpace:status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/HtcAbsPreference;->log(Ljava/lang/String;)V

    :cond_0
    const-string v4, "mounted_ro"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v2, "mounted"

    const v4, 0x7f0c0b3e

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string v4, "mounted"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p1}, Lcom/android/settings/framework/core/storage/HtcStatFs;->getFormattedSpace(Landroid/content/Context;Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    iget-object v4, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v4, v3}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setTitleInForeground(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->refreshMultiColorBar()V

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->updateState()V

    return-void

    :cond_2
    const v4, 0x7f0c08b7

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method protected onHandleUiMessage(Landroid/os/Message;Lcom/android/settings/framework/os/HtcMessageParcel;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsPreference;->onHandleUiMessage(Landroid/os/Message;Lcom/android/settings/framework/os/HtcMessageParcel;)V

    iget-object v0, p2, Lcom/android/settings/framework/os/HtcMessageParcel;->id:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->onRefreshMultiColorBar()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p2, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->onSetMultiColorBarVisibilty(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onInitializeInBackground(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsPreference;->onInitializeInBackground(Landroid/content/Context;)V

    return-void
.end method

.method public final onResponse(Landroid/os/Message;)V
    .locals 5

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    sget-boolean v1, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->DEBUG:Z

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

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsPreference;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->onGetTotalAvailableSpace(Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;)V

    goto :goto_0

    :pswitch_2
    sget-boolean v1, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->DEBUG:Z

    if-eqz v1, :cond_1

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

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsPreference;->log(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->onGetAppsSpace(J)V

    goto :goto_0

    :pswitch_3
    sget-boolean v1, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->DEBUG:Z

    if-eqz v1, :cond_2

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

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsPreference;->log(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->onGetMediaFilesSpace(Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public updateState()V
    .locals 4

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v2

    const/high16 v3, 0x40b0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->getState(Ljava/lang/String;)Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    move-result-object v1

    sget-object v2, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference$1;->$SwitchMap$com$android$settings$framework$core$storage$HtcIStorageVolume$MediaState:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsPreference;->setEnabledInForeground(Z)V

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :goto_2
    invoke-direct {p0, v2}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->setMultiColorBarVisibility(I)V

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
