.class public Lcom/android/settings/framework/app/HtcInternalFragment;
.super Landroid/app/Fragment;
.source "HtcInternalFragment.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcIInternalHost;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

.field private mHandlerWrapper:Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/android/settings/framework/app/HtcInternalFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/app/HtcInternalFragment;->TAG:Ljava/lang/String;

    .line 42
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/app/HtcInternalFragment;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 44
    new-instance v0, Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/app/HtcActivityHandler;-><init>(Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcInternalFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    return-void
.end method


# virtual methods
.method public addCallback(Ljava/lang/Object;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler;->addCallback(Ljava/lang/Object;)V

    .line 213
    return-void
.end method

.method protected enabledBackupButton()Z
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x1

    return v0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 423
    return-void
.end method

.method public getActivityHandlerWrapper()Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalFragment;->mHandlerWrapper:Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;

    iget-object v1, p0, Lcom/android/settings/framework/app/HtcInternalFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-direct {v0, v1}, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;-><init>(Lcom/android/settings/framework/app/HtcActivityHandler;)V

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcInternalFragment;->mHandlerWrapper:Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalFragment;->mHandlerWrapper:Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;

    return-object v0
.end method

.method protected getBackParentWithExtra()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 286
    .local v0, args:Landroid/os/Bundle;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 288
    .local v1, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 291
    :cond_0
    return-object v1
.end method

.method public getInternalActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getInternalResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getNonUiHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->getNonUiHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    .prologue
    .line 406
    const v0, 0x7f0c0c2c

    return v0
.end method

.method protected getParentIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getUiHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getParentFragmentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getParentIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getParentFragmentTitleResId()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->enabledBackupButton()Z

    move-result v4

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getBackParentWithExtra()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;->initBackupButton(Landroid/app/Fragment;Ljava/lang/String;Landroid/content/Intent;IZLandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 137
    .local v7, content:Landroid/view/View;
    const v0, 0x2080001

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 139
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 113
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/framework/app/HtcActivityHandler;->onActivityResult(IILandroid/content/Intent;)V

    .line 115
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 62
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/app/HtcActivityHandler;->attachActivity(Landroid/app/Activity;)V

    .line 63
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler;->onCreate(Landroid/os/Bundle;)V

    .line 74
    return-void
.end method

.method public onCreateInBackground(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 146
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onDestroy()V

    .line 107
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 108
    return-void
.end method

.method public onDestroyInBackground()V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method public onDisplay()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public onDisplayInBackground()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method public onHandleNonUiMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 178
    return-void
.end method

.method public onHandleUiMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 174
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 95
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onPause()V

    .line 96
    return-void
.end method

.method public onPauseInBackground()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 85
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onResume()V

    .line 86
    return-void
.end method

.method public onResumeInBackground()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 79
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onStart()V

    .line 80
    return-void
.end method

.method public onStartInBackground()V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onStop()V

    .line 101
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 102
    return-void
.end method

.method public onStopInBackground()V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method public requestHandlers()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->requestHandlers()V

    .line 183
    return-void
.end method

.method public requestHandlers(Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;)V
    .locals 1
    .parameter "instance"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler;->requestHandlers(Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;)V

    .line 188
    return-void
.end method

.method public runInNonUIThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler;->runInNonUIThread(Ljava/lang/Runnable;)V

    .line 208
    return-void
.end method

.method public runInUIThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler;->runInUIThread(Ljava/lang/Runnable;)V

    .line 203
    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 302
    return-void
.end method

.method public startFragment(Lcom/htc/preference/HtcPreference;)V
    .locals 8
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    .line 343
    if-nez p1, :cond_0

    .line 344
    const-string v7, "The argument preference can not be null."

    .line 345
    .local v7, error:Ljava/lang/String;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    .end local v7           #error:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 349
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/preference/HtcPreferenceActivity;

    if-eqz v0, :cond_1

    .line 350
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity;

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 364
    :goto_0
    return-void

    .line 357
    :cond_1
    sget-object v0, Lcom/android/settings/framework/app/HtcInternalFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this.mActivity("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getInternalActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is not instanceof HtcPreferenceActivity."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 361
    :cond_2
    sget-object v0, Lcom/android/settings/framework/app/HtcInternalFragment;->TAG:Ljava/lang/String;

    const-string v1, "The fragment can not be null when action type was set to START_FRAGMENT"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startFragment(Lcom/htc/preference/HtcPreference;Landroid/content/Intent;)V
    .locals 2
    .parameter "preference"
    .parameter "intent"

    .prologue
    .line 325
    if-nez p1, :cond_0

    .line 326
    const-string v0, "The argument preference can not be null."

    .line 327
    .local v0, error:Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 330
    .end local v0           #error:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getFragment()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    .line 332
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreference;->setFragment(Ljava/lang/String;)V

    .line 334
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/app/HtcInternalFragment;->startFragment(Lcom/htc/preference/HtcPreference;)V

    .line 335
    return-void
.end method

.method public startService(Landroid/content/Intent;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 311
    return-void
.end method
