.class public Lcom/android/settings/NotificationAccessSettings;
.super Lcom/android/settings/framework/app/HtcInternalFragment;
.source "NotificationAccessSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/NotificationAccessSettings$HtcNotificationItemListenerListAdapter;,
        Lcom/android/settings/NotificationAccessSettings$HtcNotificationItemViewHolder;,
        Lcom/android/settings/NotificationAccessSettings$ListenerListAdapter;,
        Lcom/android/settings/NotificationAccessSettings$ViewHolder;,
        Lcom/android/settings/NotificationAccessSettings$ListenerWarningDialogFragment;
    }
.end annotation


# static fields
.field private static final SHOW_PACKAGE_NAME:Z

.field static final TAG:Ljava/lang/String;


# instance fields
.field private final ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

.field protected mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

.field protected mActionBarExt:Lcom/htc/widget/ActionBarExt;

.field private mCR:Landroid/content/ContentResolver;

.field protected mEmptyView:Lcom/htc/widget/HtcEmptyView;

.field private final mEnabledListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mList:Lcom/android/settings/NotificationAccessSettings$ListenerListAdapter;

.field protected mListView:Lcom/htc/widget/HtcListView;

.field private mPM:Landroid/content/pm/PackageManager;

.field private final mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field protected mViewContainer:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/NotificationAccessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/NotificationAccessSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;-><init>()V

    .line 91
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NotificationAccessSettings;->mEnabledListeners:Ljava/util/HashSet;

    .line 94
    const-string v0, "enabled_notification_listeners"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/NotificationAccessSettings;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    .line 97
    new-instance v0, Lcom/android/settings/NotificationAccessSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/NotificationAccessSettings$1;-><init>(Lcom/android/settings/NotificationAccessSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/NotificationAccessSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 104
    new-instance v0, Lcom/android/settings/NotificationAccessSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/NotificationAccessSettings$2;-><init>(Lcom/android/settings/NotificationAccessSettings;)V

    iput-object v0, p0, Lcom/android/settings/NotificationAccessSettings;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 427
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/NotificationAccessSettings;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/NotificationAccessSettings;->mEnabledListeners:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/NotificationAccessSettings;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/NotificationAccessSettings;->mPM:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private static getListeners(Landroid/widget/ArrayAdapter;Landroid/content/pm/PackageManager;)I
    .locals 10
    .parameter
    .parameter "pm"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Landroid/content/pm/ServiceInfo;",
            ">;",
            "Landroid/content/pm/PackageManager;",
            ")I"
        }
    .end annotation

    .prologue
    .line 246
    .local p0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Landroid/content/pm/ServiceInfo;>;"
    const/4 v4, 0x0

    .line 247
    .local v4, listeners:I
    if-eqz p0, :cond_0

    .line 248
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 250
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    .line 252
    .local v6, user:I
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.service.notification.NotificationListenerService"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x84

    invoke-virtual {p1, v7, v8, v6}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    .line 257
    .local v3, installedServices:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 258
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 259
    .local v5, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v2, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 261
    .local v2, info:Landroid/content/pm/ServiceInfo;
    const-string v7, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    iget-object v8, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 263
    sget-object v7, Lcom/android/settings/NotificationAccessSettings;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping notification listener service "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": it does not require the permission "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 269
    :cond_1
    if-eqz p0, :cond_2

    .line 270
    invoke-virtual {p0, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 272
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 274
    .end local v2           #info:Landroid/content/pm/ServiceInfo;
    .end local v5           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_3
    return v4
.end method

.method static getListenersCount(Landroid/content/pm/PackageManager;)I
    .locals 1
    .parameter "pm"

    .prologue
    .line 242
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/android/settings/NotificationAccessSettings;->getListeners(Landroid/widget/ArrayAdapter;Landroid/content/pm/PackageManager;)I

    move-result v0

    return v0
.end method

.method private initActionBar()V
    .locals 1

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/android/settings/NotificationAccessSettings;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/android/settings/NotificationAccessSettings;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    if-nez v0, :cond_0

    .line 370
    invoke-virtual {p0}, Lcom/android/settings/NotificationAccessSettings;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getHtcActionBar()Lcom/htc/widget/ActionBarExt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/NotificationAccessSettings;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/android/settings/NotificationAccessSettings;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-nez v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/android/settings/NotificationAccessSettings;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/NotificationAccessSettings;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    .line 378
    :cond_1
    return-void
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 474
    const-class v0, Lcom/android/settings/SecuritySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    .prologue
    .line 479
    const v0, 0x7f0c0c5f

    return v0
.end method

.method protected initView()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 395
    invoke-direct {p0}, Lcom/android/settings/NotificationAccessSettings;->initActionBar()V

    .line 397
    iget-object v1, p0, Lcom/android/settings/NotificationAccessSettings;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400ac

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 399
    .local v0, rootView:Landroid/view/View;
    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcEmptyView;

    iput-object v1, p0, Lcom/android/settings/NotificationAccessSettings;->mEmptyView:Lcom/htc/widget/HtcEmptyView;

    .line 400
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListView;

    iput-object v1, p0, Lcom/android/settings/NotificationAccessSettings;->mListView:Lcom/htc/widget/HtcListView;

    .line 402
    iget-object v1, p0, Lcom/android/settings/NotificationAccessSettings;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 403
    iget-object v1, p0, Lcom/android/settings/NotificationAccessSettings;->mListView:Lcom/htc/widget/HtcListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 405
    iget-object v1, p0, Lcom/android/settings/NotificationAccessSettings;->mViewContainer:Landroid/widget/FrameLayout;

    if-nez v1, :cond_0

    .line 406
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/settings/NotificationAccessSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/NotificationAccessSettings;->mViewContainer:Landroid/widget/FrameLayout;

    .line 407
    iget-object v1, p0, Lcom/android/settings/NotificationAccessSettings;->mViewContainer:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    :cond_0
    iget-object v1, p0, Lcom/android/settings/NotificationAccessSettings;->mViewContainer:Landroid/widget/FrameLayout;

    const v2, 0x2080001

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 413
    iget-object v1, p0, Lcom/android/settings/NotificationAccessSettings;->mViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 415
    iget-object v1, p0, Lcom/android/settings/NotificationAccessSettings;->mViewContainer:Landroid/widget/FrameLayout;

    return-object v1
.end method

.method isListenerEnabled(Landroid/content/pm/ServiceInfo;)Z
    .locals 3
    .parameter "info"

    .prologue
    .line 278
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .local v0, cn:Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/android/settings/NotificationAccessSettings;->mEnabledListeners:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method loadEnabledListeners()V
    .locals 6

    .prologue
    .line 201
    iget-object v4, p0, Lcom/android/settings/NotificationAccessSettings;->mEnabledListeners:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 202
    iget-object v4, p0, Lcom/android/settings/NotificationAccessSettings;->mCR:Landroid/content/ContentResolver;

    const-string v5, "enabled_notification_listeners"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, flat:Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 205
    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, names:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 207
    aget-object v4, v3, v2

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 208
    .local v0, cn:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 209
    iget-object v4, p0, Lcom/android/settings/NotificationAccessSettings;->mEnabledListeners:Ljava/util/HashSet;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 206
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v2           #i:I
    .end local v3           #names:[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalFragment;->onCreate(Landroid/os/Bundle;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/NotificationAccessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/NotificationAccessSettings;->mPM:Landroid/content/pm/PackageManager;

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/NotificationAccessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/NotificationAccessSettings;->mCR:Landroid/content/ContentResolver;

    .line 162
    new-instance v0, Lcom/android/settings/NotificationAccessSettings$HtcNotificationItemListenerListAdapter;

    invoke-virtual {p0}, Lcom/android/settings/NotificationAccessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/NotificationAccessSettings$HtcNotificationItemListenerListAdapter;-><init>(Lcom/android/settings/NotificationAccessSettings;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/NotificationAccessSettings;->mList:Lcom/android/settings/NotificationAccessSettings$ListenerListAdapter;

    .line 163
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/settings/NotificationAccessSettings;->mInflater:Landroid/view/LayoutInflater;

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/NotificationAccessSettings;->initView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 285
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/android/settings/NotificationAccessSettings;->mList:Lcom/android/settings/NotificationAccessSettings$ListenerListAdapter;

    invoke-virtual {v2, p3}, Lcom/android/settings/NotificationAccessSettings$ListenerListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ServiceInfo;

    .line 286
    .local v1, info:Landroid/content/pm/ServiceInfo;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .local v0, cn:Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/settings/NotificationAccessSettings;->mEnabledListeners:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    iget-object v2, p0, Lcom/android/settings/NotificationAccessSettings;->mEnabledListeners:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/NotificationAccessSettings;->saveEnabledListeners()V

    .line 297
    :goto_0
    return-void

    .line 293
    :cond_0
    new-instance v2, Lcom/android/settings/NotificationAccessSettings$ListenerWarningDialogFragment;

    invoke-direct {v2, p0}, Lcom/android/settings/NotificationAccessSettings$ListenerWarningDialogFragment;-><init>(Lcom/android/settings/NotificationAccessSettings;)V

    iget-object v3, p0, Lcom/android/settings/NotificationAccessSettings;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v3}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/android/settings/NotificationAccessSettings$ListenerWarningDialogFragment;->setListenerInfo(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/android/settings/NotificationAccessSettings$ListenerWarningDialogFragment;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/NotificationAccessSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "dialog"

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/NotificationAccessSettings$ListenerWarningDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 194
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->onPause()V

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/NotificationAccessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/NotificationAccessSettings;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 197
    iget-object v0, p0, Lcom/android/settings/NotificationAccessSettings;->mCR:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/NotificationAccessSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 198
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 177
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->onResume()V

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/NotificationAccessSettings;->updateList()V

    .line 181
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 182
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/NotificationAccessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/NotificationAccessSettings;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 189
    iget-object v1, p0, Lcom/android/settings/NotificationAccessSettings;->mCR:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/settings/NotificationAccessSettings;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/NotificationAccessSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 190
    return-void
.end method

.method saveEnabledListeners()V
    .locals 6

    .prologue
    .line 216
    const/4 v2, 0x0

    .line 217
    .local v2, sb:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/settings/NotificationAccessSettings;->mEnabledListeners:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 218
    .local v0, cn:Landroid/content/ComponentName;
    if-nez v2, :cond_0

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2           #sb:Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .restart local v2       #sb:Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 221
    :cond_0
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 225
    .end local v0           #cn:Landroid/content/ComponentName;
    :cond_1
    iget-object v4, p0, Lcom/android/settings/NotificationAccessSettings;->mCR:Landroid/content/ContentResolver;

    const-string v5, "enabled_notification_listeners"

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 228
    return-void

    .line 225
    :cond_2
    const-string v3, ""

    goto :goto_2
.end method

.method updateList()V
    .locals 3

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/android/settings/NotificationAccessSettings;->loadEnabledListeners()V

    .line 233
    iget-object v0, p0, Lcom/android/settings/NotificationAccessSettings;->mList:Lcom/android/settings/NotificationAccessSettings$ListenerListAdapter;

    iget-object v1, p0, Lcom/android/settings/NotificationAccessSettings;->mPM:Landroid/content/pm/PackageManager;

    invoke-static {v0, v1}, Lcom/android/settings/NotificationAccessSettings;->getListeners(Landroid/widget/ArrayAdapter;Landroid/content/pm/PackageManager;)I

    .line 234
    iget-object v0, p0, Lcom/android/settings/NotificationAccessSettings;->mList:Lcom/android/settings/NotificationAccessSettings$ListenerListAdapter;

    new-instance v1, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;

    iget-object v2, p0, Lcom/android/settings/NotificationAccessSettings;->mPM:Landroid/content/pm/PackageManager;

    invoke-direct {v1, v2}, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/NotificationAccessSettings$ListenerListAdapter;->sort(Ljava/util/Comparator;)V

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/NotificationAccessSettings;->updateListView()V

    .line 239
    return-void
.end method

.method updateListView()V
    .locals 6

    .prologue
    const/16 v2, 0x8

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 381
    iget-object v1, p0, Lcom/android/settings/NotificationAccessSettings;->mList:Lcom/android/settings/NotificationAccessSettings$ListenerListAdapter;

    invoke-virtual {v1}, Lcom/android/settings/NotificationAccessSettings$ListenerListAdapter;->isEmpty()Z

    move-result v0

    .line 383
    .local v0, isEmpty:Z
    iget-object v1, p0, Lcom/android/settings/NotificationAccessSettings;->mListView:Lcom/htc/widget/HtcListView;

    if-eqz v1, :cond_0

    .line 384
    iget-object v1, p0, Lcom/android/settings/NotificationAccessSettings;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v4, p0, Lcom/android/settings/NotificationAccessSettings;->mList:Lcom/android/settings/NotificationAccessSettings$ListenerListAdapter;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 386
    iget-object v4, p0, Lcom/android/settings/NotificationAccessSettings;->mListView:Lcom/htc/widget/HtcListView;

    if-ne v5, v0, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 389
    :cond_0
    iget-object v1, p0, Lcom/android/settings/NotificationAccessSettings;->mEmptyView:Lcom/htc/widget/HtcEmptyView;

    if-eqz v1, :cond_1

    .line 390
    iget-object v1, p0, Lcom/android/settings/NotificationAccessSettings;->mEmptyView:Lcom/htc/widget/HtcEmptyView;

    if-ne v5, v0, :cond_3

    :goto_1
    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcEmptyView;->setVisibility(I)V

    .line 392
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 386
    goto :goto_0

    :cond_3
    move v3, v2

    .line 390
    goto :goto_1
.end method
