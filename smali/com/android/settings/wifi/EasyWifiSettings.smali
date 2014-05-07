.class public Lcom/android/settings/wifi/EasyWifiSettings;
.super Lcom/android/settings/framework/app/HtcInternalFragment;
.source "EasyWifiSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;,
        Lcom/android/settings/wifi/EasyWifiSettings$ApplicationsAdapter;,
        Lcom/android/settings/wifi/EasyWifiSettings$AppViewHolder;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final DEBUG:Z = false

.field private static final MSG_CREATE_VIEW:I = 0x1

.field static final TAG:Ljava/lang/String; = "EasyWifiSetting"


# instance fields
.field private mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

.field private mActionBarExt:Lcom/htc/widget/ActionBarExt;

.field private mAdapter:Lcom/android/settings/wifi/EasyWifiSettings$ApplicationsAdapter;

.field private mApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mEasyApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;",
            ">;"
        }
    .end annotation
.end field

.field private mEasySettingsPackage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Landroid/content/IntentFilter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsViewContentCreated:Z

.field private mListContainer:Landroid/view/View;

.field private mListView:Lcom/htc/widget/HtcListView;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRootView:Landroid/view/View;

.field private mViewContainer:Landroid/widget/FrameLayout;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/wifi/EasyWifiSettings;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;-><init>()V

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mApplications:Ljava/util/List;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mEasyApplications:Ljava/util/List;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mEasySettingsPackage:Ljava/util/List;

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mIsViewContentCreated:Z

    .line 125
    new-instance v0, Lcom/android/settings/wifi/EasyWifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/EasyWifiSettings$1;-><init>(Lcom/android/settings/wifi/EasyWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 434
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/EasyWifiSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mWifiState:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/EasyWifiSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput p1, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mWifiState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/EasyWifiSettings;)Lcom/android/settings/wifi/EasyWifiSettings$ApplicationsAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mAdapter:Lcom/android/settings/wifi/EasyWifiSettings$ApplicationsAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/EasyWifiSettings;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/EasyWifiSettings;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private initActionBar()V
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/android/settings/wifi/EasyWifiSettings;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    if-nez v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/wifi/EasyWifiSettings;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getHtcActionBar()Lcom/htc/widget/ActionBarExt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-nez v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    .line 166
    :cond_1
    return-void
.end method

.method private matchEasyActivity(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;
    .locals 4
    .parameter "appInfo"

    .prologue
    const/4 v2, 0x0

    .line 182
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    move-object v1, v2

    .line 193
    :goto_0
    return-object v1

    .line 186
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mEasySettingsPackage:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 188
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mEasySettingsPackage:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;

    iget-object v1, v1, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 189
    iget-object v1, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mEasySettingsPackage:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;

    iput-object p1, v1, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;->info:Landroid/content/pm/ApplicationInfo;

    .line 190
    iget-object v1, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mEasySettingsPackage:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;

    goto :goto_0

    .line 186
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v1, v2

    .line 193
    goto :goto_0
.end method

.method private postInitUI()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 330
    iget-object v1, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040084

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mRootView:Landroid/view/View;

    .line 331
    iget-object v1, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mRootView:Landroid/view/View;

    const v2, 0x7f0900d7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mListContainer:Landroid/view/View;

    .line 332
    iget-object v1, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mListContainer:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 334
    iget-object v1, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mListContainer:Landroid/view/View;

    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListView;

    .line 335
    .local v0, listView:Lcom/htc/widget/HtcListView;
    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 336
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListView;->setSaveEnabled(Z)V

    .line 337
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListView;->setItemsCanFocus(Z)V

    .line 339
    invoke-static {v0, v4}, Lcom/android/settings/framework/widget/HtcListViewWrapper;->fillEmptySpace(Lcom/htc/widget/HtcListView;Z)V

    .line 340
    iget-object v1, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mAdapter:Lcom/android/settings/wifi/EasyWifiSettings$ApplicationsAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 341
    iget-object v1, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mAdapter:Lcom/android/settings/wifi/EasyWifiSettings$ApplicationsAdapter;

    invoke-virtual {v1}, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 342
    iget-object v1, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mViewContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 343
    return-void
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    const-class v0, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    .prologue
    .line 372
    const v0, 0x7f0c0d2b

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 178
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalFragment;->onCreate(Landroid/os/Bundle;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/wifi/EasyWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 149
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mFilter:Landroid/content/IntentFilter;

    .line 150
    iget-object v0, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public onCreateInBackground(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x1

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/wifi/EasyWifiSettings;->getInternalActivity()Landroid/app/Activity;

    move-result-object v7

    if-nez v7, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    const-string v7, "wifi"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/EasyWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    iput-object v7, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 206
    iget-object v7, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v7

    iput v7, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mWifiState:I

    .line 209
    new-instance v1, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;-><init>(Lcom/android/settings/wifi/EasyWifiSettings;)V

    .line 210
    .local v1, au_wifi:Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;
    const-string v7, "com.kddi.android.au_wifi_connect"

    invoke-virtual {v1, v7}, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;->setPackageName(Ljava/lang/String;)V

    .line 211
    const-string v7, "jp.co.netvision.WifiConnect.WifiConnectCUBE"

    invoke-virtual {v1, v7}, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;->setClassName(Ljava/lang/String;)V

    .line 212
    const v7, 0x7f0c0918

    invoke-virtual {v1, v7}, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;->setTitleRes(I)V

    .line 213
    const v7, 0x7f0c0919

    invoke-virtual {v1, v7}, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;->setSummaryRes(I)V

    .line 216
    new-instance v0, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;-><init>(Lcom/android/settings/wifi/EasyWifiSettings;)V

    .line 217
    .local v0, aoss:Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;
    const-string v7, "jp.buffalo.aoss"

    invoke-virtual {v0, v7}, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;->setPackageName(Ljava/lang/String;)V

    .line 218
    const v7, 0x7f0c091a

    invoke-virtual {v0, v7}, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;->setTitleRes(I)V

    .line 219
    const v7, 0x7f0c091b

    invoke-virtual {v0, v7}, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;->setSummaryRes(I)V

    .line 222
    new-instance v5, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;-><init>(Lcom/android/settings/wifi/EasyWifiSettings;)V

    .line 223
    .local v5, wlanstart:Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;
    const-string v7, "jp.aterm.android.rakuraku.wlanstart"

    invoke-virtual {v5, v7}, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;->setPackageName(Ljava/lang/String;)V

    .line 224
    const v7, 0x7f0c091c

    invoke-virtual {v5, v7}, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;->setTitleRes(I)V

    .line 225
    const v7, 0x7f0c091d

    invoke-virtual {v5, v7}, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;->setSummaryRes(I)V

    .line 227
    iget-object v7, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mEasySettingsPackage:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v7, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mEasySettingsPackage:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v7, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mEasySettingsPackage:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/wifi/EasyWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 233
    iget-object v7, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mPm:Landroid/content/pm/PackageManager;

    const/16 v8, 0x2200

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mApplications:Ljava/util/List;

    .line 236
    iget-object v7, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mApplications:Ljava/util/List;

    if-nez v7, :cond_2

    .line 237
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mApplications:Ljava/util/List;

    .line 241
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v7, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mApplications:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_5

    .line 242
    iget-object v7, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mApplications:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 244
    .local v3, info:Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_4

    .line 246
    iget-boolean v7, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v7, :cond_4

    .line 247
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/EasyWifiSettings;->matchEasyActivity(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;

    move-result-object v4

    .line 248
    .local v4, view:Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;
    if-eqz v4, :cond_4

    .line 249
    sget-boolean v7, Lcom/android/settings/wifi/EasyWifiSettings;->DEBUG:Z

    if-eqz v7, :cond_3

    const-string v7, "EasyWifiSetting"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "packageName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", enabled="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_3
    iget-object v7, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mEasyApplications:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    .end local v4           #view:Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 256
    .end local v3           #info:Landroid/content/pm/ApplicationInfo;
    :cond_5
    new-instance v6, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;-><init>(Lcom/android/settings/wifi/EasyWifiSettings;)V

    .line 257
    .local v6, wps:Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;
    const-string v7, "wps"

    invoke-virtual {v6, v7}, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;->setPackageName(Ljava/lang/String;)V

    .line 258
    const v7, 0x7f0c091e

    invoke-virtual {v6, v7}, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;->setTitleRes(I)V

    .line 259
    const v7, 0x7f0c091f

    invoke-virtual {v6, v7}, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;->setSummaryRes(I)V

    .line 260
    invoke-virtual {v6, v10}, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;->setWPSflag(Z)V

    .line 263
    iget-object v7, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mEasyApplications:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    new-instance v7, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationsAdapter;

    iget-object v8, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mEasyApplications:Ljava/util/List;

    invoke-direct {v7, p0, v8}, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationsAdapter;-><init>(Lcom/android/settings/wifi/EasyWifiSettings;Ljava/util/List;)V

    iput-object v7, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mAdapter:Lcom/android/settings/wifi/EasyWifiSettings$ApplicationsAdapter;

    .line 266
    const-string v7, "EasyWifiSetting"

    const-string v8, "init mAdapter"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v7, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mViewContainer:Landroid/widget/FrameLayout;

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mIsViewContentCreated:Z

    if-nez v7, :cond_0

    .line 269
    iput-boolean v10, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mIsViewContentCreated:Z

    .line 270
    invoke-virtual {p0}, Lcom/android/settings/wifi/EasyWifiSettings;->getUiHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-static {v7, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, -0x1

    .line 281
    invoke-direct {p0}, Lcom/android/settings/wifi/EasyWifiSettings;->initActionBar()V

    .line 284
    iput-object p1, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mInflater:Landroid/view/LayoutInflater;

    .line 286
    iget-object v0, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mViewContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 287
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/settings/wifi/EasyWifiSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mViewContainer:Landroid/widget/FrameLayout;

    .line 288
    iget-object v0, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mViewContainer:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mViewContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onHandleUiMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 298
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 304
    :goto_0
    return-void

    .line 300
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/EasyWifiSettings;->postInitUI()V

    goto :goto_0

    .line 298
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
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
    .line 346
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v2, "EasyWifiSetting"

    const-string v3, "easy clicked"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v2, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mEasyApplications:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;

    .line 349
    .local v1, item:Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;
    iget-boolean v2, v1, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;->isWPS:Z

    if-nez v2, :cond_2

    .line 350
    iget-object v2, v1, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;->className:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 351
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 352
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, v1, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;->packageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;->className:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/EasyWifiSettings;->startActivity(Landroid/content/Intent;)V

    .line 363
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/EasyWifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, v1, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 356
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/EasyWifiSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 359
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iget v2, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mWifiState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 360
    new-instance v2, Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/EasyWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2}, Lcom/android/settings/wifi/WpsDialog;->show()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 325
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->onPause()V

    .line 326
    invoke-virtual {p0}, Lcom/android/settings/wifi/EasyWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 327
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 318
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->onResume()V

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/wifi/EasyWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/EasyWifiSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 320
    return-void
.end method
