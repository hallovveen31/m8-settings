.class public Lcom/android/settings/framework/app/HtcInternalAlertActivity;
.super Lcom/htc/app/HtcAlertActivity;
.source "HtcInternalAlertActivity.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcIInternalHost;


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

.field private mHandlerWrapper:Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;

.field private mHtcFontScale:F

.field private mThemeId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/htc/app/HtcAlertActivity;-><init>()V

    .line 32
    new-instance v0, Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/app/HtcActivityHandler;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/app/HtcInternalAlertActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->TAG:Ljava/lang/String;

    .line 36
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    iput-boolean v0, p0, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->DEBUG:Z

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->mHtcFontScale:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/app/HtcInternalAlertActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/framework/app/HtcInternalAlertActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addCallback(Ljava/lang/Object;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler;->addCallback(Ljava/lang/Object;)V

    .line 234
    return-void
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 245
    return-object p0
.end method

.method public getActivityHandlerWrapper()Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->mHandlerWrapper:Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;

    iget-object v1, p0, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-direct {v0, v1}, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;-><init>(Lcom/android/settings/framework/app/HtcActivityHandler;)V

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->mHandlerWrapper:Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->mHandlerWrapper:Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 252
    return-object p0
.end method

.method public getNonUiHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->getNonUiHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getUiHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 156
    invoke-super {p0, p1, p2, p3}, Lcom/htc/app/HtcAlertActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 157
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/framework/app/HtcActivityHandler;->onActivityResult(IILandroid/content/Intent;)V

    .line 158
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 63
    invoke-static {p0}, Landroid/content/res/HtcConfiguration;->applyHtcFontscale(Landroid/content/Context;)Z

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->mHtcFontScale:F

    .line 68
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->mThemeId:I

    .line 69
    iget v0, p0, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->mThemeId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->setTheme(I)V

    .line 74
    invoke-static {p0}, Lcom/android/settings/framework/app/HtcActivityManager;->applyGuestMode(Landroid/app/Activity;)Z

    .line 76
    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler;->onCreate(Landroid/os/Bundle;)V

    .line 78
    return-void
.end method

.method public onCreateInBackground(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 167
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onDestroy()V

    .line 150
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onDestroy()V

    .line 151
    return-void
.end method

.method public onDestroyInBackground()V
    .locals 0

    .prologue
    .line 191
    return-void
.end method

.method public onDisplay()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public onDisplayInBackground()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public onHandleNonUiMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 199
    return-void
.end method

.method public onHandleUiMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 195
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onPause()V

    .line 138
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onPause()V

    .line 139
    return-void
.end method

.method public onPauseInBackground()V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 83
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler;->onPostCreate(Landroid/os/Bundle;)V

    .line 84
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 127
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onPostResume()V

    .line 128
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onPostResume()V

    .line 129
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onRestart()V

    .line 95
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onRestart()V

    .line 96
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onResume()V

    .line 102
    invoke-static {p0, v1}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v2

    iget v3, p0, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->mThemeId:I

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    .line 103
    .local v1, isThemeChanged:Z
    :cond_0
    iget v2, p0, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->mHtcFontScale:F

    invoke-static {p0, v2}, Landroid/content/res/HtcConfiguration;->checkHtcFontscaleChanged(Landroid/content/Context;F)Z

    move-result v0

    .line 105
    .local v0, isFontScaleChanged:Z
    iget-boolean v2, p0, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 106
    iget-object v2, p0, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFontScaleChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v2, p0, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isThemeChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 111
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/settings/framework/app/HtcInternalAlertActivity$1;

    invoke-direct {v3, p0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity$1;-><init>(Lcom/android/settings/framework/app/HtcInternalAlertActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 122
    :cond_3
    iget-object v2, p0, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v2}, Lcom/android/settings/framework/app/HtcActivityHandler;->onResume()V

    .line 123
    return-void
.end method

.method public onResumeInBackground()V
    .locals 0

    .prologue
    .line 175
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onStart()V

    .line 89
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onStart()V

    .line 90
    return-void
.end method

.method public onStartInBackground()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onStop()V

    .line 144
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onStop()V

    .line 145
    return-void
.end method

.method public onStopInBackground()V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method public requestHandlers()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->requestHandlers()V

    .line 204
    return-void
.end method

.method public requestHandlers(Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;)V
    .locals 1
    .parameter "instance"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler;->requestHandlers(Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;)V

    .line 209
    return-void
.end method

.method public runInNonUIThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler;->runInNonUIThread(Ljava/lang/Runnable;)V

    .line 229
    return-void
.end method

.method public runInUIThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler;->runInUIThread(Ljava/lang/Runnable;)V

    .line 224
    return-void
.end method
