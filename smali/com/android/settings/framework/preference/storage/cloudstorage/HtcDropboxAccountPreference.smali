.class public Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference;
.super Lcom/android/settings/framework/preference/HtcAbsStatusPreference;
.source "HtcDropboxAccountPreference.java"


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceVersion;
    value = 2.0
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mSummary:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0f0017

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference;->mSummary:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference;->mSummary:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->syncStateFromDataSourceInBackground()V

    return-void
.end method

.method private getSummaryInNewThread()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference$1;-><init>(Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method protected getCustomSummary()Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0f18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getCustomTitle()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference;->getCustomTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c02bf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isConstantSummary()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onGetSummaryInBackground()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference;->mSummary:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference;->mSummary:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference;->getSummaryInNewThread()V

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference;->getCustomSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onPauseInBackground(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->onPauseInBackground(Landroid/app/Activity;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference;->mSummary:Ljava/lang/String;

    return-void
.end method
