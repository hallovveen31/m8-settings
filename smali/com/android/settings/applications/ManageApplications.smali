.class public Lcom/android/settings/applications/ManageApplications;
.super Lcom/htc/fragment/widget/CarouselFragment;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ManageApplications$5;
    }
.end annotation


# static fields
.field public static final APP_CHG:Ljava/lang/String; = "chg"

.field static final AUTHORITY:Ljava/lang/String; = "com.android.settings.applications.ManageApplications"

.field private static final TAG:Ljava/lang/String; = "ManageApplications"


# instance fields
.field private mActionBarExt:Lcom/htc/widget/ActionBarExt;

.field private mActionBarSearch:Lcom/htc/widget/ActionBarSearch;

.field private mActivity:Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

.field private mContext:Landroid/content/Context;

.field private mIsSearchMode:Z

.field private mSearchItemView:Lcom/htc/widget/ActionBarItemView;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.android.settings.applications.ManageApplications"

    invoke-direct {p0, v0}, Lcom/htc/fragment/widget/CarouselFragment;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mIsSearchMode:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/ManageApplications;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/ManageApplications;->switchToSearchContainer(Z)V

    return-void
.end method

.method private applySearchActionBar()V
    .locals 4

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v2}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    new-instance v2, Lcom/htc/widget/ActionBarItemView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/widget/ActionBarItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mSearchItemView:Lcom/htc/widget/ActionBarItemView;

    new-instance v2, Lcom/htc/widget/ActionBarSearch;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/widget/ActionBarSearch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mActionBarSearch:Lcom/htc/widget/ActionBarSearch;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mActionBarSearch:Lcom/htc/widget/ActionBarSearch;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarSearch;->setClearIconVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mActionBarSearch:Lcom/htc/widget/ActionBarSearch;

    invoke-virtual {v2}, Lcom/htc/widget/ActionBarSearch;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    const v3, 0x7f0c0271

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHint(I)V

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mActionBarSearch:Lcom/htc/widget/ActionBarSearch;

    invoke-virtual {v2}, Lcom/htc/widget/ActionBarSearch;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    new-instance v3, Lcom/android/settings/applications/ManageApplications$1;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/ManageApplications$1;-><init>(Lcom/android/settings/applications/ManageApplications;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mActionBarSearch:Lcom/htc/widget/ActionBarSearch;

    invoke-virtual {v2}, Lcom/htc/widget/ActionBarSearch;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    new-instance v3, Lcom/android/settings/applications/ManageApplications$2;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/ManageApplications$2;-><init>(Lcom/android/settings/applications/ManageApplications;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mSearchItemView:Lcom/htc/widget/ActionBarItemView;

    const v3, 0x20800c2

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mSearchItemView:Lcom/htc/widget/ActionBarItemView;

    new-instance v3, Lcom/android/settings/applications/ManageApplications$3;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/ManageApplications$3;-><init>(Lcom/android/settings/applications/ManageApplications;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mSearchItemView:Lcom/htc/widget/ActionBarItemView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v2}, Lcom/htc/widget/ActionBarExt;->getSearchContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    new-instance v2, Lcom/android/settings/applications/ManageApplications$4;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/ManageApplications$4;-><init>(Lcom/android/settings/applications/ManageApplications;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mActionBarSearch:Lcom/htc/widget/ActionBarSearch;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    return-void
.end method

.method private initActionBar()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mActivity:Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mActivity:Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getHtcActionBar()Lcom/htc/widget/ActionBarExt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->applySearchActionBar()V

    return-void
.end method

.method private switchToSearchContainer(Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mIsSearchMode:Z

    if-nez v0, :cond_0

    const-string v0, "Running"

    invoke-virtual {p0}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mIsSearchMode:Z

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarExt;->switchContainer()V

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mActionBarSearch:Lcom/htc/widget/ActionBarSearch;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarSearch;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mActionBarSearch:Lcom/htc/widget/ActionBarSearch;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V

    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mIsSearchMode:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/android/settings/applications/ManageApplications;->mIsSearchMode:Z

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarExt;->switchContainer()V

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mActionBarSearch:Lcom/htc/widget/ActionBarSearch;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarSearch;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mActionBarSearch:Lcom/htc/widget/ActionBarSearch;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 15

    invoke-super/range {p0 .. p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->initActionBar()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Downloaded"

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "classname"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_0

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    :cond_0
    const-class v9, Lcom/android/settings/Settings$RunningServicesActivity;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, ".RunningServices"

    invoke-virtual {v2, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_1
    const-string v3, "Running"

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getCarouselHost()Lcom/htc/fragment/widget/CarouselHost;

    move-result-object v4

    const-string v9, "tab"

    const-string v10, "Downloaded"

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    new-instance v10, Lcom/htc/fragment/widget/CarouselTabSpec;

    const-string v11, "Downloaded"

    const v12, 0x7f0c0f7f

    const-string v13, "com.android.settings"

    const-class v14, Lcom/android/settings/applications/ManageApplicationsFragment;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/htc/fragment/widget/CarouselTabSpec;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Lcom/htc/fragment/widget/CarouselTabSpec;->setArguments(Landroid/os/Bundle;)Lcom/htc/fragment/widget/CarouselTabSpec;

    move-result-object v10

    const/16 v11, 0x65

    invoke-virtual {v10, v11}, Lcom/htc/fragment/widget/CarouselTabSpec;->setState(I)Lcom/htc/fragment/widget/CarouselTabSpec;

    move-result-object v10

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x2080001

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/fragment/widget/CarouselTabSpec;->setBackground(Landroid/graphics/drawable/Drawable;)Lcom/htc/fragment/widget/CarouselTabSpec;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lcom/htc/fragment/widget/CarouselHost;->addTab(Landroid/content/Context;Lcom/htc/fragment/widget/CarouselTabSpec;)V

    const v7, 0x7f0c0f81

    const v5, 0x7f020184

    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->supportMoveAppOptions()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->getMoveAppTargetVolumeType()Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    move-result-object v8

    sget-object v9, Lcom/android/settings/applications/ManageApplications$5;->$SwitchMap$com$android$settings$framework$core$storage$HtcIStorageVolume$StorageType:[I

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ManageApplications doesn\'t support this type:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_4
    const-class v9, Lcom/android/settings/Settings$StorageUseActivity;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, ".StorageUse"

    invoke-virtual {v2, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_5
    const-string v9, "sort"

    const/4 v10, 0x5

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v9, "filter"

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "All"

    goto/16 :goto_1

    :cond_6
    const-string v9, "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v3, "All"

    goto/16 :goto_1

    :pswitch_0
    const v7, 0x7f0c0f81

    const v5, 0x7f020184

    :goto_2
    const-string v9, "tab"

    const-string v10, "OnSdCard"

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    new-instance v10, Lcom/htc/fragment/widget/CarouselTabSpec;

    const-string v11, "OnSdCard"

    const-string v12, "com.android.settings"

    const-class v13, Lcom/android/settings/applications/ManageApplicationsFragment;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v11, v7, v12, v13}, Lcom/htc/fragment/widget/CarouselTabSpec;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Lcom/htc/fragment/widget/CarouselTabSpec;->setArguments(Landroid/os/Bundle;)Lcom/htc/fragment/widget/CarouselTabSpec;

    move-result-object v10

    const/16 v11, 0x65

    invoke-virtual {v10, v11}, Lcom/htc/fragment/widget/CarouselTabSpec;->setState(I)Lcom/htc/fragment/widget/CarouselTabSpec;

    move-result-object v10

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x2080001

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/fragment/widget/CarouselTabSpec;->setBackground(Landroid/graphics/drawable/Drawable;)Lcom/htc/fragment/widget/CarouselTabSpec;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lcom/htc/fragment/widget/CarouselHost;->addTab(Landroid/content/Context;Lcom/htc/fragment/widget/CarouselTabSpec;)V

    if-eqz v0, :cond_7

    const-string v9, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v9, "supportGotoSdCardTab"

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v3, "OnSdCard"

    :cond_7
    const-string v9, "tab"

    const-string v10, "Running"

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    new-instance v10, Lcom/htc/fragment/widget/CarouselTabSpec;

    const-string v11, "Running"

    const v12, 0x7f0c0f80

    const-string v13, "com.android.settings"

    const-class v14, Lcom/android/settings/applications/ManageApplicationsFragment;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/htc/fragment/widget/CarouselTabSpec;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Lcom/htc/fragment/widget/CarouselTabSpec;->setArguments(Landroid/os/Bundle;)Lcom/htc/fragment/widget/CarouselTabSpec;

    move-result-object v10

    const/16 v11, 0x65

    invoke-virtual {v10, v11}, Lcom/htc/fragment/widget/CarouselTabSpec;->setState(I)Lcom/htc/fragment/widget/CarouselTabSpec;

    move-result-object v10

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x2080001

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/fragment/widget/CarouselTabSpec;->setBackground(Landroid/graphics/drawable/Drawable;)Lcom/htc/fragment/widget/CarouselTabSpec;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lcom/htc/fragment/widget/CarouselHost;->addTab(Landroid/content/Context;Lcom/htc/fragment/widget/CarouselTabSpec;)V

    const-string v9, "tab"

    const-string v10, "All"

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    new-instance v10, Lcom/htc/fragment/widget/CarouselTabSpec;

    const-string v11, "All"

    const v12, 0x7f0c0f7d

    const-string v13, "com.android.settings"

    const-class v14, Lcom/android/settings/applications/ManageApplicationsFragment;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/htc/fragment/widget/CarouselTabSpec;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Lcom/htc/fragment/widget/CarouselTabSpec;->setArguments(Landroid/os/Bundle;)Lcom/htc/fragment/widget/CarouselTabSpec;

    move-result-object v10

    const/16 v11, 0x65

    invoke-virtual {v10, v11}, Lcom/htc/fragment/widget/CarouselTabSpec;->setState(I)Lcom/htc/fragment/widget/CarouselTabSpec;

    move-result-object v10

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x2080001

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/fragment/widget/CarouselTabSpec;->setBackground(Landroid/graphics/drawable/Drawable;)Lcom/htc/fragment/widget/CarouselTabSpec;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lcom/htc/fragment/widget/CarouselHost;->addTab(Landroid/content/Context;Lcom/htc/fragment/widget/CarouselTabSpec;)V

    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/CarouselFragment;->setDefaultTab(Ljava/lang/String;)V

    return-void

    :pswitch_1
    const v7, 0x7f0c026f

    const v5, 0x7f020185

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/htc/fragment/widget/CarouselFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public onCurrentTabChanged(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "Running"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mSearchItemView:Lcom/htc/widget/ActionBarItemView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarItemView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mSearchItemView:Lcom/htc/widget/ActionBarItemView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v2}, Lcom/android/settings/applications/ManageApplications;->switchToSearchContainer(Z)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/CarouselFragment;->onCurrentTabChanged(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mSearchItemView:Lcom/htc/widget/ActionBarItemView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mSearchItemView:Lcom/htc/widget/ActionBarItemView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarItemView;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mIsSearchMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mActionBarSearch:Lcom/htc/widget/ActionBarSearch;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method
