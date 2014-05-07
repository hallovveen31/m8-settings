.class public Lcom/android/settings/HtcAbsSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
.source "HtcAbsSettings.java"

# interfaces
.implements Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver$OnStatusBarTapListener;


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mDefaultPriority:I

.field private mIsInForeground:Z

.field private mIsSubSettings:Ljava/lang/Boolean;

.field private mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;-><init>()V

    .line 28
    const-class v0, Lcom/android/settings/HtcAbsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/HtcAbsSettings;->TAG:Ljava/lang/String;

    .line 30
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    iput-boolean v0, p0, Lcom/android/settings/HtcAbsSettings;->DEBUG:Z

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/HtcAbsSettings;->mIsInForeground:Z

    .line 46
    const-string v0, "HtcAbsSettings.<init>"

    invoke-direct {p0, v0}, Lcom/android/settings/HtcAbsSettings;->setPriority(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method private addAutoTestLog()V
    .locals 2

    .prologue
    .line 226
    invoke-static {}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/HtcAbsSettings;->getHtcListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/HtcAbsSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/HtcAbsSettings$1;-><init>(Lcom/android/settings/HtcAbsSettings;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/settings/HtcAbsSettings;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void
.end method

.method private resetPriority(Ljava/lang/String;)V
    .locals 3
    .parameter "tag"

    .prologue
    .line 80
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 81
    .local v0, main:Ljava/lang/Thread;
    iget v1, p0, Lcom/android/settings/HtcAbsSettings;->mDefaultPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 83
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": main-thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/HtcAbsSettings;->log(Ljava/lang/String;)V

    .line 86
    :cond_0
    return-void
.end method

.method private setPriority(Ljava/lang/String;)V
    .locals 3
    .parameter "tag"

    .prologue
    .line 60
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 61
    .local v0, main:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    iput v1, p0, Lcom/android/settings/HtcAbsSettings;->mDefaultPriority:I

    .line 62
    iget v1, p0, Lcom/android/settings/HtcAbsSettings;->mDefaultPriority:I

    add-int/lit8 v1, v1, 0x2

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 67
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": main-thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/HtcAbsSettings;->log(Ljava/lang/String;)V

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": priority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/HtcAbsSettings;->mDefaultPriority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/HtcAbsSettings;->log(Ljava/lang/String;)V

    .line 72
    :cond_0
    return-void
.end method


# virtual methods
.method protected isSubSettings()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/HtcAbsSettings;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/HtcAbsSettings;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v0, v2

    .line 95
    .local v0, isSinglePane:Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/HtcAbsSettings;->mIsSubSettings:Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    .line 96
    iget-object v1, p0, Lcom/android/settings/HtcAbsSettings;->mIsSubSettings:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 124
    :goto_1
    return v1

    .end local v0           #isSinglePane:Z
    :cond_1
    move v0, v1

    .line 93
    goto :goto_0

    .line 99
    .restart local v0       #isSinglePane:Z
    :cond_2
    instance-of v3, p0, Lcom/android/settings/SubSettings;

    if-eqz v3, :cond_3

    .line 100
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/HtcAbsSettings;->mIsSubSettings:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1

    .line 114
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/android/settings/Settings;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz v0, :cond_5

    .line 117
    iget-boolean v1, p0, Lcom/android/settings/HtcAbsSettings;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 118
    iget-object v1, p0, Lcom/android/settings/HtcAbsSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is SubSettings."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/HtcAbsSettings;->mIsSubSettings:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1

    .line 124
    :cond_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/HtcAbsSettings;->mIsSubSettings:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 4
    .parameter "fragmentName"
    .parameter "args"
    .parameter "titleRes"
    .parameter "shortTitleRes"

    .prologue
    .line 197
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_1

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "onBuildStartFragmentIntent(...)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t fragmentName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    if-eqz p2, :cond_0

    .line 205
    const-string v1, "\t"

    invoke-static {v0, v1, p2}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 208
    :cond_0
    const-string v1, "\t titleRes: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t shortTitleRes: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/HtcAbsSettings;->log(Ljava/lang/String;)V

    .line 217
    .end local v0           #builder:Ljava/lang/StringBuilder;
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/settings/HtcAbsSettings;->isSubSettings()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    invoke-static {p0}, Lcom/android/settings/framework/activity/HtcHeaderAdapter$Preloader;->preload(Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;)V

    .line 135
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/HtcAbsSettings;->isSubSettings()Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    new-instance v0, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    invoke-virtual {p0}, Lcom/android/settings/HtcAbsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/HtcAbsSettings;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    .line 141
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/HtcAbsSettings;->addAutoTestLog()V

    .line 142
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/android/settings/HtcAbsSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 178
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {p0}, Lcom/android/settings/HtcAbsSettings;->isSubSettings()Z

    move-result v1

    if-nez v1, :cond_1

    .line 180
    instance-of v1, v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;

    if-eqz v1, :cond_1

    .line 181
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_0

    .line 182
    const-string v1, "onDestroy(): HtcHeaderAdapter: destroy()"

    invoke-direct {p0, v1}, Lcom/android/settings/HtcAbsSettings;->log(Ljava/lang/String;)V

    .line 184
    :cond_0
    check-cast v0, Lcom/android/settings/framework/activity/HtcHeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/android/settings/framework/activity/HtcHeaderAdapter;->destroy()V

    .line 187
    :cond_1
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onDestroy()V

    .line 188
    return-void
.end method

.method public onDisplay()V
    .locals 1

    .prologue
    .line 168
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onDisplay()V

    .line 170
    const-string v0, "onDisplay"

    invoke-direct {p0, v0}, Lcom/android/settings/HtcAbsSettings;->resetPriority(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 157
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onPause()V

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/HtcAbsSettings;->mIsInForeground:Z

    .line 160
    iget-object v0, p0, Lcom/android/settings/HtcAbsSettings;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/settings/HtcAbsSettings;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;->unregister()V

    .line 162
    iget-object v0, p0, Lcom/android/settings/HtcAbsSettings;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;->setOnStatusBarTapListener(Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver$OnStatusBarTapListener;)V

    .line 164
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onResume()V

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/HtcAbsSettings;->mIsInForeground:Z

    .line 149
    iget-object v0, p0, Lcom/android/settings/HtcAbsSettings;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/settings/HtcAbsSettings;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    invoke-virtual {v0, p0}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;->setOnStatusBarTapListener(Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver$OnStatusBarTapListener;)V

    .line 151
    iget-object v0, p0, Lcom/android/settings/HtcAbsSettings;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;->register()V

    .line 153
    :cond_0
    return-void
.end method

.method public onStatusBarTapEvent()V
    .locals 2

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/android/settings/HtcAbsSettings;->mIsInForeground:Z

    if-nez v0, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/HtcAbsSettings;->getHtcListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/HtcAbsSettings;->getHtcListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto :goto_0
.end method
