.class public Lcom/android/settings/framework/app/HtcInternalActivity;
.super Landroid/app/Activity;
.source "HtcInternalActivity.java"

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
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/app/HtcInternalActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->TAG:Ljava/lang/String;

    .line 31
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    iput-boolean v0, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->DEBUG:Z

    .line 33
    new-instance v0, Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/app/HtcActivityHandler;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->mHtcFontScale:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/app/HtcInternalActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/framework/app/HtcInternalActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addCallback(Ljava/lang/Object;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler;->addCallback(Ljava/lang/Object;)V

    .line 233
    return-void
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 244
    return-object p0
.end method

.method public getActivityHandlerWrapper()Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->mHandlerWrapper:Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;

    iget-object v1, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-direct {v0, v1}, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;-><init>(Lcom/android/settings/framework/app/HtcActivityHandler;)V

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->mHandlerWrapper:Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->mHandlerWrapper:Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 251
    return-object p0
.end method

.method public getNonUiHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->getNonUiHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getUiHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

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
    .line 155
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 156
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/framework/app/HtcActivityHandler;->onActivityResult(IILandroid/content/Intent;)V

    .line 157
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 61
    invoke-static {p0}, Landroid/content/res/HtcConfiguration;->applyHtcFontscale(Landroid/content/Context;)Z

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->mHtcFontScale:F

    .line 66
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->mThemeId:I

    .line 67
    iget v0, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->mThemeId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/app/HtcInternalActivity;->setTheme(I)V

    .line 72
    invoke-static {p0}, Lcom/android/settings/framework/app/HtcActivityManager;->applyGuestMode(Landroid/app/Activity;)Z

    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler;->onCreate(Landroid/os/Bundle;)V

    .line 76
    return-void
.end method

.method public onCreateInBackground(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 166
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onDestroy()V

    .line 149
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 150
    return-void
.end method

.method public onDestroyInBackground()V
    .locals 0

    .prologue
    .line 190
    return-void
.end method

.method public onDisplay()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public onDisplayInBackground()V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method public onHandleNonUiMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 198
    return-void
.end method

.method public onHandleUiMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 194
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 137
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onPause()V

    .line 138
    return-void
.end method

.method public onPauseInBackground()V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler;->onPostCreate(Landroid/os/Bundle;)V

    .line 82
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 127
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onPostResume()V

    .line 128
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 93
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onRestart()V

    .line 94
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 99
    iget-object v2, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v2}, Lcom/android/settings/framework/app/HtcActivityHandler;->onResume()V

    .line 102
    invoke-static {p0, v1}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v2

    iget v3, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->mThemeId:I

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    .line 103
    .local v1, isThemeChanged:Z
    :cond_0
    iget v2, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->mHtcFontScale:F

    invoke-static {p0, v2}, Landroid/content/res/HtcConfiguration;->checkHtcFontscaleChanged(Landroid/content/Context;F)Z

    move-result v0

    .line 105
    .local v0, isFontScaleChanged:Z
    iget-boolean v2, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 106
    iget-object v2, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->TAG:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->TAG:Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/settings/framework/app/HtcInternalActivity$1;

    invoke-direct {v3, p0}, Lcom/android/settings/framework/app/HtcInternalActivity$1;-><init>(Lcom/android/settings/framework/app/HtcInternalActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 122
    :cond_3
    return-void
.end method

.method public onResumeInBackground()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 87
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onStart()V

    .line 88
    return-void
.end method

.method public onStartInBackground()V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onStop()V

    .line 143
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 144
    return-void
.end method

.method public onStopInBackground()V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public requestHandlers()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->requestHandlers()V

    .line 203
    return-void
.end method

.method public requestHandlers(Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;)V
    .locals 1
    .parameter "instance"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler;->requestHandlers(Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;)V

    .line 208
    return-void
.end method

.method public runInNonUIThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler;->runInNonUIThread(Ljava/lang/Runnable;)V

    .line 228
    return-void
.end method

.method public runInUIThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler;->runInUIThread(Ljava/lang/Runnable;)V

    .line 223
    return-void
.end method
