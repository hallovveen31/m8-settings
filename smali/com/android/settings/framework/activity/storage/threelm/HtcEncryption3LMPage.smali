.class public Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;
.super Landroid/app/Fragment;
.source "HtcEncryption3LMPage.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcISupportFootBar;


# static fields
.field private static final MIN_BATTERY_LEVEL:I = 0x50

.field private static final MIN_CHARGER_BATTERY_LEVEL:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "HtcEncryption3LMPage"


# instance fields
.field private mBatteryWarning:Landroid/widget/TextView;

.field private mContentView:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private mInitiateListener:Landroid/view/View$OnClickListener;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPowerWarning:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 64
    new-instance v0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$1;-><init>(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 100
    new-instance v0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;-><init>(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->mInitiateButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->mPowerWarning:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->mBatteryWarning:Landroid/widget/TextView;

    return-object v0
.end method

.method private getCancelButton()Lcom/htc/widget/HtcFooterButton;
    .locals 3

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 232
    .local v0, activity:Landroid/app/Activity;
    new-instance v1, Lcom/htc/widget/HtcFooterButton;

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcFooterButton;-><init>(Landroid/content/Context;)V

    .line 234
    .local v1, button:Lcom/htc/widget/HtcFooterButton;
    const v2, 0x7f0c1288

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 235
    new-instance v2, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$3;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$3;-><init>(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    return-object v1
.end method

.method private getToDoButton()Lcom/htc/widget/HtcFooterButton;
    .locals 3

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 253
    .local v0, activity:Landroid/app/Activity;
    new-instance v1, Lcom/htc/widget/HtcFooterButton;

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcFooterButton;-><init>(Landroid/content/Context;)V

    .line 255
    .local v1, button:Lcom/htc/widget/HtcFooterButton;
    const v2, 0x2040174

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 256
    iget-object v2, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    return-object v1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 279
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 280
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 281
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 282
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "android.app.action.START_ENCRYPTION"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 284
    const-string v4, "device_policy"

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 286
    .local v1, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v1, :cond_0

    .line 287
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v3

    .line 288
    .local v3, status:I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 291
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 295
    .end local v1           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v3           #status:I
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    const/4 v5, 0x0

    const v6, 0x7f0c0c67

    const/4 v7, 0x0

    .line 176
    sget-object v2, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->isEncryptionEnabled:Lcom/android/settings/framework/content/custom/property/HtcIProperty;

    .line 178
    .local v2, property:Lcom/android/settings/framework/content/custom/property/HtcIProperty;,"Lcom/android/settings/framework/content/custom/property/HtcIProperty<Ljava/lang/Boolean;>;"
    invoke-interface {v2}, Lcom/android/settings/framework/content/custom/property/HtcIProperty;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v6, 0x7f0c09ba

    invoke-static {v4, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    move-object v4, v5

    .line 220
    :goto_0
    return-object v4

    .line 185
    :cond_0
    const v4, 0x7f040065

    invoke-virtual {p1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->mContentView:Landroid/view/View;

    .line 187
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    iput-object v4, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->mIntentFilter:Landroid/content/IntentFilter;

    .line 188
    iget-object v4, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    iget-object v4, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->mContentView:Landroid/view/View;

    const v5, 0x7f0900a1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/framework/widget/HtcParagraphContainerView;

    .line 193
    .local v1, description:Lcom/android/settings/framework/widget/HtcParagraphContainerView;
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->isPhoneStorageFuse()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 196
    invoke-virtual {v1, v6}, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->setText(I)V

    .line 207
    :goto_1
    iget-object v4, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->mContentView:Landroid/view/View;

    const v5, 0x7f090062

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->mPowerWarning:Landroid/widget/TextView;

    .line 208
    iget-object v4, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->mContentView:Landroid/view/View;

    const v5, 0x7f090061

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->mBatteryWarning:Landroid/widget/TextView;

    .line 211
    invoke-direct {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->getCancelButton()Lcom/htc/widget/HtcFooterButton;

    move-result-object v0

    .line 212
    .local v0, cancelButton:Lcom/htc/widget/HtcFooterButton;
    invoke-direct {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->getToDoButton()Lcom/htc/widget/HtcFooterButton;

    move-result-object v3

    .line 213
    .local v3, toDoButton:Lcom/htc/widget/HtcFooterButton;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->mContentView:Landroid/view/View;

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/htc/widget/HtcFooterButton;

    aput-object v0, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-static {v4, v5, v6}, Lcom/android/settings/framework/app/HtcISupportFootBar$Stub;->applyFooterBar(Landroid/app/Activity;Landroid/view/View;[Lcom/htc/widget/HtcFooterButton;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->mContentView:Landroid/view/View;

    .line 217
    iput-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->mInitiateButton:Landroid/widget/Button;

    .line 220
    iget-object v4, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->mContentView:Landroid/view/View;

    goto :goto_0

    .line 199
    .end local v0           #cancelButton:Lcom/htc/widget/HtcFooterButton;
    .end local v3           #toDoButton:Lcom/htc/widget/HtcFooterButton;
    :cond_1
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportSdCardStorage()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 200
    const v4, 0x7f0c09b9

    invoke-virtual {v1, v4}, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->setText(I)V

    goto :goto_1

    .line 203
    :cond_2
    invoke-virtual {v1, v6}, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->setText(I)V

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 268
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 269
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 270
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 262
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 264
    return-void
.end method
