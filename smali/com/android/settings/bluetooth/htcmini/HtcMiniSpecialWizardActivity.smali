.class public Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;
.super Lcom/htc/widget/setupwizard/HtcWizardActivity;
.source "HtcMiniSpecialWizardActivity.java"

# interfaces
.implements Lcom/android/settings/bluetooth/HtcHeadsetUtils$Callback;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter;
    }
.end annotation


# static fields
.field private static final ITEM1:I = 0x0

.field private static final ITEM2:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HtcMiniSpecialWizardActivity"


# instance fields
.field private mAdapter:Landroid/widget/BaseAdapter;

.field private mAnimation:Landroid/widget/ImageView;

.field private mBtAnimationResId:I

.field private mCheckedItem:I

.field private mConfig:Landroid/content/res/Configuration;

.field private mDescTextResId:I

.field private mDescTextString:Ljava/lang/CharSequence;

.field private mDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mDivider:Landroid/view/View;

.field private mImage:Landroid/widget/ImageView;

.field private mImageResId:I

.field protected mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private mNfcAnimationResId:I

.field private mText:Lcom/htc/widget/HtcListItem2LineText;

.field private mThemeId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/htc/widget/setupwizard/HtcWizardActivity;-><init>()V

    .line 270
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mCheckedItem:I

    .line 274
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;)Landroid/widget/BaseAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mCheckedItem:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mCheckedItem:I

    return p1
.end method

.method private initialize()V
    .locals 1

    .prologue
    .line 136
    const v0, 0x7f040123

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->setSubContentView(I)V

    .line 138
    const v0, 0x7f090025

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mImage:Landroid/widget/ImageView;

    .line 139
    const v0, 0x7f0902f4

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mAnimation:Landroid/widget/ImageView;

    .line 140
    const v0, 0x7f0900a4

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mDivider:Landroid/view/View;

    .line 141
    const v0, 0x7f090026

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mText:Lcom/htc/widget/HtcListItem2LineText;

    .line 143
    iget v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mImageResId:I

    if-eqz v0, :cond_0

    .line 144
    iget v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mImageResId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->setImage(I)V

    .line 147
    :cond_0
    iget v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mBtAnimationResId:I

    if-eqz v0, :cond_1

    .line 148
    iget v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mBtAnimationResId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->startBtAnimation(I)V

    .line 151
    :cond_1
    iget v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mNfcAnimationResId:I

    if-eqz v0, :cond_2

    .line 152
    iget v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mNfcAnimationResId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->startNfcAnimation(I)V

    .line 155
    :cond_2
    iget v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mDescTextResId:I

    if-eqz v0, :cond_5

    .line 156
    iget v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mDescTextResId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->setDescriptionText(I)V

    .line 161
    :cond_3
    :goto_0
    invoke-static {p0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniUtils;->isNfcAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    instance-of v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSetupPage1;

    if-eqz v0, :cond_4

    .line 163
    invoke-direct {p0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->showSetupOption()V

    .line 165
    :cond_4
    return-void

    .line 157
    :cond_5
    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mDescTextString:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 158
    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mDescTextString:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->setDescriptionText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showMiniConnectedDialog()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 373
    :goto_0
    return-void

    .line 366
    :cond_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0af1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0af7

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 372
    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto :goto_0
.end method

.method private showSetupOption()V
    .locals 3

    .prologue
    .line 246
    const v2, 0x7f0902f6

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 247
    .local v1, view:Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 249
    const v2, 0x7f090041

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 251
    .local v0, list:Landroid/widget/ListView;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 252
    iget-object v2, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mAdapter:Landroid/widget/BaseAdapter;

    if-nez v2, :cond_0

    .line 253
    new-instance v2, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter;

    invoke-direct {v2, p0, p0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter;-><init>(Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mAdapter:Landroid/widget/BaseAdapter;

    .line 255
    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 256
    new-instance v2, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$2;

    invoke-direct {v2, p0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$2;-><init>(Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 264
    invoke-static {p0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniUtils;->getSetupOption(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mCheckedItem:I

    .line 265
    iget-object v2, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v2, :cond_1

    .line 266
    iget-object v2, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 268
    :cond_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 383
    const-string v0, "HtcMiniSpecialWizardActivity"

    const-string v1, "onClick!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const/16 v0, 0x2ee5

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->setResult(I)V

    .line 385
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->finish()V

    .line 386
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->isOrientationChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mConfig:Landroid/content/res/Configuration;

    .line 131
    invoke-direct {p0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->initialize()V

    .line 133
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mConfig:Landroid/content/res/Configuration;

    .line 80
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 81
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mThemeId:I

    .line 82
    iget v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mThemeId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->setTheme(I)V

    .line 83
    return-void
.end method

.method public onDelayUIUpdate()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->initialize()V

    .line 124
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->onDestroy()V

    .line 115
    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 119
    :cond_0
    return-void
.end method

.method public onHtcMiniConnected()V
    .locals 2

    .prologue
    .line 376
    const-string v0, "HtcMiniSpecialWizardActivity"

    const-string v1, "onHtcMiniConnected!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-direct {p0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->showMiniConnectedDialog()V

    .line 378
    return-void
.end method

.method public onHtcMiniFound(Lcom/android/settings/bluetooth/CachedBluetoothDevice;I)V
    .locals 0
    .parameter "cachedDevice"
    .parameter "state"

    .prologue
    .line 380
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->onPause()V

    .line 109
    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settings/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEventManager;->unregisterHtcMiniCallback()V

    .line 110
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 87
    invoke-super {p0}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->onResume()V

    .line 88
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v1

    iget v2, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mThemeId:I

    if-eq v1, v2, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$1;

    invoke-direct {v2, p0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$1;-><init>(Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->isNewConnectedMini()Z

    move-result v0

    .line 99
    .local v0, isNewConnectedMini:Z
    if-eqz v0, :cond_1

    .line 100
    invoke-direct {p0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->showMiniConnectedDialog()V

    .line 104
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settings/bluetooth/BluetoothEventManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/settings/bluetooth/BluetoothEventManager;->registerHtcMiniCallback(Lcom/android/settings/bluetooth/HtcHeadsetUtils$Callback;)V

    goto :goto_0
.end method

.method protected setDescriptionText(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mDescTextString:Ljava/lang/CharSequence;

    .line 217
    iput p1, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mDescTextResId:I

    .line 218
    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mText:Lcom/htc/widget/HtcListItem2LineText;

    if-nez v0, :cond_0

    .line 226
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mText:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mText:Lcom/htc/widget/HtcListItem2LineText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextSingleLine(Z)V

    .line 224
    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mText:Lcom/htc/widget/HtcListItem2LineText;

    const v1, 0x203006e

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextStyle(I)V

    .line 225
    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(I)V

    goto :goto_0
.end method

.method protected setDescriptionText(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "str"

    .prologue
    const/4 v2, 0x0

    .line 233
    iput v2, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mDescTextResId:I

    .line 234
    iput-object p1, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mDescTextString:Ljava/lang/CharSequence;

    .line 235
    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mText:Lcom/htc/widget/HtcListItem2LineText;

    if-nez v0, :cond_0

    .line 243
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mText:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextSingleLine(Z)V

    .line 241
    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mText:Lcom/htc/widget/HtcListItem2LineText;

    const v1, 0x203006e

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextStyle(I)V

    .line 242
    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mText:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v1, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mDescTextString:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected setImage(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 172
    iput p1, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mImageResId:I

    .line 173
    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mImage:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 181
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mDivider:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 178
    iget-object v1, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mDivider:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mConfig:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 178
    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method

.method protected startBtAnimation(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 199
    iput p1, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mBtAnimationResId:I

    .line 200
    iget-object v2, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mAnimation:Landroid/widget/ImageView;

    if-nez v2, :cond_0

    .line 209
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mBtAnimationResId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 204
    .local v1, mDrawable:Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mAnimation:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mBtAnimationResId:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 205
    iget-object v2, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mAnimation:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 206
    iget-object v2, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mAnimation:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v0, v1

    .line 207
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 208
    .local v0, frameAnimation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0
.end method

.method protected startNfcAnimation(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 185
    iput p1, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mNfcAnimationResId:I

    .line 186
    iget-object v2, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mImage:Landroid/widget/ImageView;

    if-nez v2, :cond_0

    .line 195
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mNfcAnimationResId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 190
    .local v1, mDrawable:Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mImage:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mNfcAnimationResId:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 191
    iget-object v2, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mImage:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 192
    iget-object v2, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v0, v1

    .line 193
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 194
    .local v0, frameAnimation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0
.end method
