.class public Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;
.super Lcom/android/settings/framework/app/HtcInternalFragment;
.source "HtcEncryptionConfirm.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcISupportFootBar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$3;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActionType:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

.field private mContentView:Landroid/view/View;

.field private mDescription:Landroid/widget/TextView;

.field private mFinalButton:Lcom/htc/widget/HtcFooterButton;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field mStorageEventListener:Lcom/android/settings/framework/core/storage/HtcStorageEventListener$OnStorageEventListener;

.field private mStorageType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

.field private mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;-><init>()V

    new-instance v0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$1;-><init>(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$2;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$2;-><init>(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mStorageEventListener:Lcom/android/settings/framework/core/storage/HtcStorageEventListener$OnStorageEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;)Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mStorageType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;)Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mActionType:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;)Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;)Lcom/htc/widget/HtcFooterButton;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mFinalButton:Lcom/htc/widget/HtcFooterButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->updateButtonEnabledState(Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;)V

    return-void
.end method

.method private getToDoButton(Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;)Lcom/htc/widget/HtcFooterButton;
    .locals 3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/htc/widget/HtcFooterButton;

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcFooterButton;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->ENCRYPT:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    if-ne p1, v2, :cond_0

    const v2, 0x7f0c09a4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object v2, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1

    :cond_0
    const v2, 0x7f0c09a5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private uLog(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v0

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "encryption"

    invoke-interface {v1, v2}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "type"

    invoke-interface {v1, v2, p1}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "action"

    const-string v3, "encryption"

    invoke-interface {v1, v2, v3}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    invoke-static {v0}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    invoke-virtual {v0}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    return-void
.end method

.method private updateButtonEnabledState(Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$3;->$SwitchMap$com$android$settings$framework$core$storage$HtcIStorageVolume$MediaState:[I

    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->getState(Ljava/lang/String;)Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mFinalButton:Lcom/htc/widget/HtcFooterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcIconButton;->setEnabled(Z)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mFinalButton:Lcom/htc/widget/HtcFooterButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcIconButton;->setEnabled(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected getBackParentWithExtra()Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 3

    const v0, 0x7f0c0c2c

    sget-object v1, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$3;->$SwitchMap$com$android$settings$framework$core$storage$HtcIStorageVolume$StorageType:[I

    iget-object v2, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mStorageType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x7f0c0999

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0c099f

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->isPhoneStorageFuse()Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f0c099f

    goto :goto_0

    :cond_0
    const v0, 0x7f0c099c

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/settings/framework/core/storage/HtcStorageEventListener;

    invoke-direct {v0}, Lcom/android/settings/framework/core/storage/HtcStorageEventListener;-><init>()V

    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mStorageEventListener:Lcom/android/settings/framework/core/storage/HtcStorageEventListener$OnStorageEventListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/core/storage/HtcStorageEventListener;->setOnStorageEventListener(Lcom/android/settings/framework/core/storage/HtcStorageEventListener$OnStorageEventListener;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/app/HtcInternalFragment;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->getStorageTypeFrom(Landroid/os/Bundle;)Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mStorageType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    invoke-static {v1}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->getActionTypeFrom(Landroid/os/Bundle;)Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mActionType:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ActionType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mActionType:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StorageType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mStorageType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const v3, 0x7f040064

    invoke-virtual {p1, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mContentView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mContentView:Landroid/view/View;

    const v4, 0x7f0900a1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mDescription:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mActionType:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    invoke-direct {p0, v3}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->getToDoButton(Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;)Lcom/htc/widget/HtcFooterButton;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mFinalButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mContentView:Landroid/view/View;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/htc/widget/HtcFooterButton;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mFinalButton:Lcom/htc/widget/HtcFooterButton;

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/settings/framework/app/HtcISupportFootBar$Stub;->applyFooterBar(Landroid/app/Activity;Landroid/view/View;[Lcom/htc/widget/HtcFooterButton;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mContentView:Landroid/view/View;

    sget-object v3, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$3;->$SwitchMap$com$android$settings$framework$core$storage$HtcIStorageVolume$StorageType:[I

    iget-object v4, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mStorageType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/app/HtcInternalFragment;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->requestHandlers()V

    :cond_2
    invoke-direct {p0, v8}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->updateButtonEnabledState(Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->isSinglePane()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mContentView:Landroid/view/View;

    const v4, 0x7f09015f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcFooter;

    if-eqz v2, :cond_3

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooter;->SetDisplayMode(I)V

    :cond_3
    iget-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mContentView:Landroid/view/View;

    return-object v3

    :pswitch_0
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getSdCardStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    iget-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mActionType:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    sget-object v4, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->ENCRYPT:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mDescription:Landroid/widget/TextView;

    sget v4, Lcom/android/settings/framework/core/storage/StorageR$string;->sd_card_encrypt_confirm_description:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mDescription:Landroid/widget/TextView;

    sget v4, Lcom/android/settings/framework/core/storage/StorageR$string;->sd_card_unencrypt_confirm_description:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getPhoneStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    iget-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mActionType:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    sget-object v4, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->ENCRYPT:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mDescription:Landroid/widget/TextView;

    const v4, 0x7f0c09ae

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mDescription:Landroid/widget/TextView;

    const v4, 0x7f0c09b1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getDataStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    iget-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mActionType:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    sget-object v4, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->ENCRYPT:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mDescription:Landroid/widget/TextView;

    const v4, 0x7f0c09b8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
