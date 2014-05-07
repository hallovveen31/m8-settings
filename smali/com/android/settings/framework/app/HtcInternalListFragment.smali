.class public Lcom/android/settings/framework/app/HtcInternalListFragment;
.super Lcom/htc/fragment/app/HtcListFragment;
.source "HtcInternalListFragment.java"

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
    .line 36
    const-class v0, Lcom/android/settings/framework/app/HtcInternalListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/app/HtcInternalListFragment;->TAG:Ljava/lang/String;

    .line 39
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/app/HtcInternalListFragment;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/htc/fragment/app/HtcListFragment;-><init>()V

    .line 41
    new-instance v0, Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/app/HtcActivityHandler;-><init>(Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcInternalListFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    return-void
.end method


# virtual methods
.method public addCallback(Ljava/lang/Object;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalListFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler;->addCallback(Ljava/lang/Object;)V

    .line 198
    return-void
.end method

.method protected enabledBackupButton()Z
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x1

    return v0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 408
    return-void
.end method

.method public getActivityHandlerWrapper()Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalListFragment;->mHandlerWrapper:Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;

    iget-object v1, p0, Lcom/android/settings/framework/app/HtcInternalListFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-direct {v0, v1}, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;-><init>(Lcom/android/settings/framework/app/HtcActivityHandler;)V

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcInternalListFragment;->mHandlerWrapper:Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalListFragment;->mHandlerWrapper:Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;

    return-object v0
.end method

.method protected getBackParentWithExtra()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalListFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 271
    .local v0, args:Landroid/os/Bundle;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 273
    .local v1, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 276
    :cond_0
    return-object v1
.end method

.method public getInternalActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalListFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getInternalResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalListFragment;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getNonUiHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalListFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->getNonUiHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    .prologue
    .line 391
    const v0, 0x7f0c0c2c

    return v0
.end method

.method protected getParentIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getUiHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalListFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/htc/fragment/app/HtcListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalListFragment;->getParentFragmentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalListFragment;->getParentIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalListFragment;->getParentFragmentTitleResId()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalListFragment;->enabledBackupButton()Z

    move-result v4

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalListFragment;->getBackParentWithExtra()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;->initBackupButton(Landroid/app/Fragment;Ljava/lang/String;Landroid/content/Intent;IZLandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 125
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 110
    invoke-super {p0, p1, p2, p3}, Lcom/htc/fragment/app/HtcListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalListFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/framework/app/HtcActivityHandler;->onActivityResult(IILandroid/content/Intent;)V

    .line 112
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/htc/fragment/app/HtcListFragment;->onAttach(Landroid/app/Activity;)V

    .line 59
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalListFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/app/HtcActivityHandler;->attachActivity(Landroid/app/Activity;)V

    .line 60
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/htc/fragment/app/HtcListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalListFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler;->onCreate(Landroid/os/Bundle;)V

    .line 71
    return-void
.end method

.method public onCreateInBackground(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 131
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalListFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onDestroy()V

    .line 104
    invoke-super {p0}, Lcom/htc/fragment/app/HtcListFragment;->onDestroy()V

    .line 105
    return-void
.end method

.method public onDestroyInBackground()V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method public onDisplay()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public onDisplayInBackground()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public onHandleNonUiMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 163
    return-void
.end method

.method public onHandleUiMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 159
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Lcom/htc/fragment/app/HtcListFragment;->onPause()V

    .line 92
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalListFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onPause()V

    .line 93
    return-void
.end method

.method public onPauseInBackground()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/htc/fragment/app/HtcListFragment;->onResume()V

    .line 82
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalListFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onResume()V

    .line 83
    return-void
.end method

.method public onResumeInBackground()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Lcom/htc/fragment/app/HtcListFragment;->onStart()V

    .line 76
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalListFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onStart()V

    .line 77
    return-void
.end method

.method public onStartInBackground()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalListFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onStop()V

    .line 98
    invoke-super {p0}, Lcom/htc/fragment/app/HtcListFragment;->onStop()V

    .line 99
    return-void
.end method

.method public onStopInBackground()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method public requestHandlers()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalListFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->requestHandlers()V

    .line 168
    return-void
.end method

.method public requestHandlers(Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;)V
    .locals 1
    .parameter "instance"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalListFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler;->requestHandlers(Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;)V

    .line 173
    return-void
.end method

.method public runInNonUIThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalListFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler;->runInNonUIThread(Ljava/lang/Runnable;)V

    .line 193
    return-void
.end method

.method public runInUIThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalListFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler;->runInUIThread(Ljava/lang/Runnable;)V

    .line 188
    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 287
    return-void
.end method

.method public startFragment(Lcom/htc/preference/HtcPreference;)V
    .locals 8
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    .line 328
    if-nez p1, :cond_0

    .line 329
    const-string v7, "The argument preference can not be null."

    .line 330
    .local v7, error:Ljava/lang/String;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    .end local v7           #error:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 334
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalListFragment;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/preference/HtcPreferenceActivity;

    if-eqz v0, :cond_1

    .line 335
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalListFragment;->getInternalActivity()Landroid/app/Activity;

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

    .line 349
    :goto_0
    return-void

    .line 342
    :cond_1
    sget-object v0, Lcom/android/settings/framework/app/HtcInternalListFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this.mActivity("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalListFragment;->getInternalActivity()Landroid/app/Activity;

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

    .line 346
    :cond_2
    sget-object v0, Lcom/android/settings/framework/app/HtcInternalListFragment;->TAG:Ljava/lang/String;

    const-string v1, "The fragment can not be null when action type was set to START_FRAGMENT"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startFragment(Lcom/htc/preference/HtcPreference;Landroid/content/Intent;)V
    .locals 2
    .parameter "preference"
    .parameter "intent"

    .prologue
    .line 310
    if-nez p1, :cond_0

    .line 311
    const-string v0, "The argument preference can not be null."

    .line 312
    .local v0, error:Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 315
    .end local v0           #error:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getFragment()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    .line 317
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreference;->setFragment(Ljava/lang/String;)V

    .line 319
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/app/HtcInternalListFragment;->startFragment(Lcom/htc/preference/HtcPreference;)V

    .line 320
    return-void
.end method

.method public startService(Landroid/content/Intent;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 296
    return-void
.end method
