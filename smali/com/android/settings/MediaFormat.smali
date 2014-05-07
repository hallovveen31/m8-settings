.class public Lcom/android/settings/MediaFormat;
.super Lcom/android/settings/framework/app/HtcInternalActivity;
.source "MediaFormat.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final KEYGUARD_REQUEST:I = 0x37

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mFinalText:Landroid/widget/TextView;

.field private mFinalView:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialView:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private mInitiateListener:Landroid/view/View$OnClickListener;

.field private mInitiateText:Landroid/widget/TextView;

.field private mStorageType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/MediaFormat;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/MediaFormat;->TAG:Ljava/lang/String;

    .line 49
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/MediaFormat;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/MediaFormat;->mStorageType:I

    .line 74
    new-instance v0, Lcom/android/settings/MediaFormat$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MediaFormat$1;-><init>(Lcom/android/settings/MediaFormat;)V

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 153
    new-instance v0, Lcom/android/settings/MediaFormat$2;

    invoke-direct {v0, p0}, Lcom/android/settings/MediaFormat$2;-><init>(Lcom/android/settings/MediaFormat;)V

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MediaFormat;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/settings/MediaFormat;->mStorageType:I

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/android/settings/MediaFormat;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/settings/MediaFormat;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/MediaFormat;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/MediaFormat;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/MediaFormat;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->establishFinalConfirmationState()V

    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0400a8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    .line 167
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    const v1, 0x7f090161

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mFinalText:Landroid/widget/TextView;

    .line 169
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    const v1, 0x7f090162

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mFinalButton:Landroid/widget/Button;

    .line 171
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mFinalButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/MediaFormat;->setContentView(Landroid/view/View;)V

    .line 177
    iget v0, p0, Lcom/android/settings/MediaFormat;->mStorageType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 178
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mFinalText:Landroid/widget/TextView;

    const v1, 0x7f0c02a5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 182
    :cond_1
    return-void
.end method

.method private establishInitialState()V
    .locals 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0400a9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    .line 199
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    const v1, 0x7f090163

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mInitiateText:Landroid/widget/TextView;

    .line 201
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    const v1, 0x7f090164

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    .line 203
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/MediaFormat;->setContentView(Landroid/view/View;)V

    .line 209
    iget v0, p0, Lcom/android/settings/MediaFormat;->mStorageType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 211
    const v0, 0x7f0c02a1

    invoke-virtual {p0, v0}, Lcom/android/settings/MediaFormat;->setTitle(I)V

    .line 212
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mInitiateText:Landroid/widget/TextView;

    const v1, 0x7f0c02a3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 214
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    const v1, 0x7f0c02a4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 218
    :cond_1
    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3
    .parameter "request"

    .prologue
    .line 123
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f0c0ecf

    invoke-virtual {p0, v1}, Lcom/android/settings/MediaFormat;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0c0ed0

    invoke-virtual {p0, v2}, Lcom/android/settings/MediaFormat;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 131
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/framework/app/HtcInternalActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 133
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 139
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 140
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->establishFinalConfirmationState()V

    goto :goto_0

    .line 141
    :cond_1
    if-nez p2, :cond_2

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/MediaFormat;->finish()V

    goto :goto_0

    .line 144
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->establishInitialState()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedState"

    .prologue
    const/4 v3, 0x0

    .line 222
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalActivity;->onCreate(Landroid/os/Bundle;)V

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/MediaFormat;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 226
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 227
    const-string v1, "extra.storage.type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/MediaFormat;->mStorageType:I

    .line 233
    :cond_0
    iput-object v3, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    .line 234
    iput-object v3, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    .line 235
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    .line 237
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->establishInitialState()V

    .line 238
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 246
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onPause()V

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/MediaFormat;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->establishInitialState()V

    .line 251
    :cond_0
    return-void
.end method
