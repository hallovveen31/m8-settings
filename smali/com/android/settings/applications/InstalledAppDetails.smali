.class public Lcom/android/settings/applications/InstalledAppDetails;
.super Lcom/android/settings/framework/activity/application/HtcAbsInstalledAppDetails;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settings/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/InstalledAppDetails$6;,
        Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;,
        Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;,
        Lcom/android/settings/applications/InstalledAppDetails$PremiumSmsSelectionListener;,
        Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;,
        Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;,
        Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;
    }
.end annotation


# static fields
.field private static final ACTIVITIES_BUTTON_ID:I = 0x65

.field private static final APP_LABEL_ID:I = 0x2

.field private static final APP_SIZE_ID:I = 0x4

.field private static final APP_VERSION_ID:I = 0x3

.field public static final ARG_PACKAGE_NAME:Ljava/lang/String; = "package"

.field private static final AUTO_LAUNCH_TITLE_VIEW_ID:I = 0xa

.field private static final AUTO_LAUNCH_VIEW_ID:I = 0x1

.field private static final BUTTON_ID_BASE:I = 0x64

.field private static final CACHE_SIZE_ID:I = 0x6

.field private static final CLEAR_CACHE:I = 0x3

.field private static final CLEAR_CACHE_BUTTON_ID:I = 0x6a

.field private static final CLEAR_DATA_BUTTON_ID:I = 0x68

.field private static final CLEAR_USER_DATA:I = 0x1

.field private static final DATA_SIZE_ID:I = 0x5

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final DISABLE_BUTTON_ID:I = 0x6b

.field private static final DLG_APP_NOT_FOUND:I = 0x3

.field private static final DLG_BASE:I = 0x0

.field private static final DLG_CANNOT_CLEAR_DATA:I = 0x4

.field private static final DLG_CLEAR_DATA:I = 0x1

.field private static final DLG_DISABLE:I = 0x7

.field private static final DLG_DISABLE_NOTIFICATIONS:I = 0x8

.field private static final DLG_FACTORY_RESET:I = 0x2

.field private static final DLG_FORCE_STOP:I = 0x5

.field private static final DLG_HARDWARE_ACCELERATION:I = 0xb

.field private static final DLG_MOVE_APP:I = 0xa

.field private static final DLG_MOVE_FAILED:I = 0x6

.field private static final DLG_SPECIAL_DISABLE:I = 0x9

.field private static final EXTERNAL_CODE_SIZE_ID:I = 0x8

.field private static final EXTERNAL_DATA_SIZE_ID:I = 0x9

.field private static final FORCE_STOP_BUTTON_ID:I = 0x66

.field private static final HARDWARE_ACCELERATION_SWITCH_ID:I = 0x6e

.field private static final HARDWARE_ACCELERATION_SWITCH_ITEM_ID:I = 0x6f

.field private static final LAYOUT_ID_BASE:I = 0xc8

.field private static final MEDIA_INTENT_FILTER:Landroid/content/IntentFilter; = null

.field private static final MOVE_APP_BUTTON_ID:I = 0x69

.field private static final MSG_INIT_PREFIX_TEXT:I = 0xb

.field private static final MSG_POST_CREATE_VIEW_IN_BACKGROUND:I = 0x2

.field private static final MSG_POST_ON_RESUME_IN_BACKGROUND:I = 0x3

.field private static final MSG_REFRESH_APP_ICON:I = 0x8

.field private static final MSG_REFRESH_BUTTON:I = 0x5

.field private static final MSG_REFRESH_EXTRA_APP_LABEL_WIDGET:I = 0xa

.field private static final MSG_REFRESH_LAYOUT:I = 0x7

.field private static final MSG_REFRESH_PREMIUM_SMS_PERMISSION:I = 0xc

.field private static final MSG_REFRESH_SECURITY_LIST:I = 0x9

.field private static final MSG_REFRESH_TEXTVIEW:I = 0x6

.field private static final MSG_REFRESH_UI_FOR_UNINSTALL_IN_BACKGROUND:I = 0xd

.field private static final MSG_REFRESH_UI_IN_BACKGROUND:I = 0x1

.field private static final MSG_SHOW_CONTENT_VIEW:I = 0x4

.field private static final NOTIFICATION_SWITCH_ID:I = 0x6c

.field private static final NOTIFICATION_SWITCH_ITEM_ID:I = 0x6d

.field private static final OP_FAILED:I = 0x2

.field private static final OP_SUCCESSFUL:I = 0x1

.field private static final PACKAGE_MOVE:I = 0x4

.field private static final PERMS_VIEW_ID:I = 0xc9

.field public static final REQUEST_MANAGE_SPACE:I = 0x2

.field public static final REQUEST_UNINSTALL:I = 0x1

.field private static final SCREEN_COMPAT_SECTION:I = 0xcb

.field private static final SECURITY_LIST_ID:I = 0xca

.field private static final SECURITY_SETTINGS_DESC_ID:I = 0xb

.field private static final SIZE_INVALID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Settings:InstalledAppDetails"

.field private static final TOTAL_SIZE_ID:I = 0x7

.field public static final UNINSTALL_ALL_USERS_MENU:I = 0x1

.field private static final UNINSTALL_BUTTON_ID:I = 0x67

.field private static final WIDGET_ENABLED_FIELD:Ljava/lang/String; = "widget_enabled_field"

.field private static final WIDGET_ID_FIELD:Ljava/lang/String; = "widget_id_field"

.field private static final WIDGET_SET_LISTENER_FIELD:Ljava/lang/String; = "widget_set_listener_field"

.field private static final WIDGET_TEXT_FIELD:Ljava/lang/String; = "widget_text_field"

.field private static final WIDGET_VISIBILITY_FIELD:Ljava/lang/String; = "widget_visibility_field"

.field private static final localLOGV:Z


# instance fields
.field private mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

.field private mActionBarExt:Lcom/htc/widget/ActionBarExt;

.field private mActivitiesButton:Landroid/widget/Button;

.field private mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

.field private mAppIcon:Lcom/htc/widget/HtcListItemColorIcon;

.field private mAppSize:Lcom/htc/widget/HtcListItem2LineStamp;

.field private mAppSnippet:Lcom/htc/widget/HtcListItem;

.field private mAppText:Lcom/htc/widget/HtcListItem2LineText;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAskCompatibilityCB:Lcom/htc/widget/HtcCheckBox;

.field private mAsp:Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;

.field private mAutoLaunchTitleView:Lcom/htc/widget/HtcListItemSeparator;

.field private mAutoLaunchView:Lcom/htc/widget/HtcListItemLabeledLayout;

.field private mCacheSize:Lcom/htc/widget/HtcListItem2LineStamp;

.field private mCanBeOnSdCardChecker:Lcom/android/settings/applications/CanBeOnSdCardChecker;

.field private mCanClearData:Z

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mClearCacheButton:Landroid/widget/Button;

.field private mClearCacheButtonItem:Lcom/htc/widget/HtcListItem;

.field private mClearCacheObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

.field private mClearDataButton:Landroid/widget/Button;

.field private mClearDataObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

.field private mComputingStr:Ljava/lang/CharSequence;

.field private mDataSize:Lcom/htc/widget/HtcListItem2LineStamp;

.field private mDisableAfterUninstall:Z

.field private mDisableButton:Landroid/widget/Button;

.field private mDisableButtonSet:Lcom/android/settings/applications/HtcUnsupportDisableSet;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mEnableCompatibilityCB:Lcom/htc/widget/HtcCheckBox;

.field private mExternalCodeSize:Lcom/htc/widget/HtcListItem2LineStamp;

.field private mExternalDataSize:Lcom/htc/widget/HtcListItem2LineStamp;

.field private mForceStopButton:Landroid/widget/Button;

.field private mForceStopPanelDivider:Landroid/view/View;

.field private mHWAccSwitch:Lcom/htc/widget/HtcCheckBox;

.field private mHWAccSwitchItem:Landroid/view/ViewGroup;

.field private mHandler:Landroid/os/Handler;

.field private mHaveSizes:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialized:Z

.field private mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mIsAppStateResume:Z

.field private mIsContentViewShowed:Z

.field private mIsViewRootReady:Z

.field private mLastCacheSize:J

.field private mLastCodeSize:J

.field private mLastDataSize:J

.field private mLastExternalCodeSize:J

.field private mLastExternalDataSize:J

.field private mLastTotalSize:J

.field private final mMediaActionReceiver:Landroid/content/BroadcastReceiver;

.field private mMoveAppButton:Landroid/widget/Button;

.field private mMoveInProgress:Z

.field private mNotificationSwitch:Lcom/htc/widget/HtcCheckBox;

.field private mNotificationSwitchItem:Lcom/htc/widget/HtcListItem;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPackageMoveObserver:Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

.field private mPermsView:Landroid/widget/LinearLayout;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRootView:Landroid/view/View;

.field private mScreenCompatSection:Landroid/view/View;

.field private mSecurityBillingDesc:Landroid/widget/TextView;

.field private mSecurityBillingList:Landroid/widget/LinearLayout;

.field private mSecurityList:Landroid/widget/LinearLayout;

.field private mSecuritySettingsDescText:Landroid/widget/TextView;

.field private mShowUninstalled:Z

.field private mSmsManager:Lcom/android/internal/telephony/ISms;

.field private mState:Lcom/android/settings/applications/ApplicationsState;

.field private mTotalSize:Lcom/htc/widget/HtcListItem2LineStamp;

.field private mUninstallButton:Landroid/widget/Button;

.field private mUninstallButtonItem:Lcom/htc/widget/HtcListItem;

.field private mUpdatedSysApp:Z

.field private mUsbManager:Landroid/hardware/usb/IUsbManager;

.field private mUserManager:Landroid/os/UserManager;

.field mViewContainer:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 129
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/applications/InstalledAppDetails;->DEBUG:Z

    .line 2089
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/settings/applications/InstalledAppDetails;->MEDIA_INTENT_FILTER:Landroid/content/IntentFilter;

    .line 2090
    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->MEDIA_INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2091
    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->MEDIA_INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2092
    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->MEDIA_INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2093
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 123
    invoke-direct {p0}, Lcom/android/settings/framework/activity/application/HtcAbsInstalledAppDetails;-><init>()V

    .line 147
    iput-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 148
    iput-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCanClearData:Z

    .line 187
    iput-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHaveSizes:Z

    .line 188
    iput-wide v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 189
    iput-wide v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastDataSize:J

    .line 190
    iput-wide v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    .line 191
    iput-wide v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastExternalDataSize:J

    .line 192
    iput-wide v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCacheSize:J

    .line 193
    iput-wide v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastTotalSize:J

    .line 239
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$1;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    .line 2078
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$4;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$4;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    .line 2095
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$5;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$5;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMediaActionReceiver:Landroid/content/BroadcastReceiver;

    .line 2545
    iput-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mIsViewRootReady:Z

    .line 2546
    iput-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mIsContentViewShowed:Z

    .line 2547
    iput-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mIsAppStateResume:Z

    .line 2560
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mViewContainer:Landroid/widget/FrameLayout;

    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 2421
    const-string v0, "Settings:InstalledAppDetails"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->processClearMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/applications/InstalledAppDetails;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/applications/InstalledAppDetails;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->forceStopPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/applications/InstalledAppDetails;I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->getMoveErrMsg(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/applications/InstalledAppDetails;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->setNotificationsEnabled(Z)V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/settings/applications/InstalledAppDetails;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveInProgress:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/settings/applications/InstalledAppDetails;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshButtons()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/applications/InstalledAppDetails;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->setHWAccEnabled(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/applications/ApplicationsState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings/applications/InstalledAppDetails;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/settings/applications/InstalledAppDetails;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->initMoveButton()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/applications/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->processMoveMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/htc/widget/HtcCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitch:Lcom/htc/widget/HtcCheckBox;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/htc/widget/HtcCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHWAccSwitch:Lcom/htc/widget/HtcCheckBox;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/applications/InstalledAppDetails;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mIsViewRootReady:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/applications/InstalledAppDetails;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->initiateClearUserData()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/applications/InstalledAppDetails;Ljava/lang/String;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 123
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    return-void
.end method

.method private checkForceStop()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 2145
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2147
    invoke-direct {p0, v5}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    .line 2161
    :goto_0
    return-void

    .line 2148
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x20

    and-int/2addr v0, v3

    if-nez v0, :cond_1

    .line 2151
    invoke-direct {p0, v6}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    goto :goto_0

    .line 2153
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v3, "package"

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2155
    .local v1, intent:Landroid/content/Intent;
    const-string v0, "android.intent.extra.PACKAGES"

    new-array v3, v6, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2156
    const-string v0, "android.intent.extra.UID"

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2157
    const-string v0, "android.intent.extra.user_handle"

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2158
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private createWidgetBundle(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)Landroid/os/Bundle;
    .locals 3
    .parameter "widgetId"
    .parameter "text"
    .parameter "enabled"
    .parameter "visibility"
    .parameter "setListener"

    .prologue
    .line 3140
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3142
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "widget_id_field"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3144
    if-eqz p2, :cond_0

    .line 3145
    const-string v1, "widget_text_field"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3148
    :cond_0
    if-eqz p3, :cond_1

    .line 3149
    const-string v1, "widget_enabled_field"

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3152
    :cond_1
    if-eqz p4, :cond_2

    .line 3153
    const-string v1, "widget_visibility_field"

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3156
    :cond_2
    if-eqz p5, :cond_3

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3157
    const-string v1, "widget_set_listener_field"

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3159
    :cond_3
    return-object v0
.end method

.method private static dumpLog(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/applications/ApplicationsState$AppEntry;)V
    .locals 4
    .parameter "context"
    .parameter "method"
    .parameter "appEntry"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2397
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 2398
    invoke-static {p1}, Lcom/android/settings/applications/InstalledAppDetails;->Log(Ljava/lang/String;)V

    .line 2399
    if-nez p2, :cond_1

    .line 2400
    const-string v0, "\t appEntry is null"

    invoke-static {v0}, Lcom/android/settings/applications/InstalledAppDetails;->Log(Ljava/lang/String;)V

    .line 2418
    :cond_0
    :goto_0
    return-void

    .line 2404
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t info.processName: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/InstalledAppDetails;->Log(Ljava/lang/String;)V

    .line 2405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t info.packageName: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/InstalledAppDetails;->Log(Ljava/lang/String;)V

    .line 2406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t info.manageSpaceActivityName: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/InstalledAppDetails;->Log(Ljava/lang/String;)V

    .line 2407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t info.name: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/InstalledAppDetails;->Log(Ljava/lang/String;)V

    .line 2408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t label: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/InstalledAppDetails;->Log(Ljava/lang/String;)V

    .line 2409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t normalizedLabel: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->normalizedLabel:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/InstalledAppDetails;->Log(Ljava/lang/String;)V

    .line 2410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t info.enabled: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/InstalledAppDetails;->Log(Ljava/lang/String;)V

    .line 2411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t FLAG_SYSTEM: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/InstalledAppDetails;->Log(Ljava/lang/String;)V

    .line 2413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t FLAG_UPDATED_SYSTEM_APP: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/InstalledAppDetails;->Log(Ljava/lang/String;)V

    .line 2415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t isInBlockedSet: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0, v1}, Lcom/android/settings/applications/HtcPackageBlocker;->isInBlockedSet(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/InstalledAppDetails;->Log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 2411
    goto :goto_1

    :cond_3
    move v1, v2

    .line 2413
    goto :goto_2
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .locals 4
    .parameter "pkgName"

    .prologue
    .line 2067
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getInternalActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2069
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 2070
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v2, p1}, Lcom/android/settings/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;)V

    .line 2071
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v2, p1}, Lcom/android/settings/applications/ApplicationsState;->getEntry(Ljava/lang/String;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v1

    .line 2072
    .local v1, newEnt:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    if-eqz v1, :cond_0

    .line 2073
    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 2075
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->checkForceStop()V

    .line 2076
    return-void
.end method

.method private getHWAccEnabled()Z
    .locals 5

    .prologue
    .line 863
    const/4 v0, 0x1

    .line 866
    .local v0, bEnabled:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationHWAccEnabledSetting(Ljava/lang/String;)Z

    move-result v0

    .line 868
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_0

    .line 869
    const-string v2, "Settings:InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHWAccEnabled, name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 877
    :cond_0
    :goto_0
    return v0

    .line 871
    :catch_0
    move-exception v1

    .line 872
    .local v1, e:Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_0

    .line 873
    const-string v2, "Settings:InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHWAccEnabled, exception, e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getMoveErrMsg(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "errCode"

    .prologue
    .line 315
    packed-switch p1, :pswitch_data_0

    .line 329
    const-string v0, ""

    :goto_0
    return-object v0

    .line 317
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0fa3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 319
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0fa4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 321
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0fa5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 323
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0fa6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 325
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0fa7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 327
    :pswitch_5
    const-string v0, ""

    goto :goto_0

    .line 315
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 1
    .parameter "packageName"

    .prologue
    .line 2218
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    if-eqz v0, :cond_0

    .line 2219
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->getPremiumSmsPermission(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2224
    :goto_0
    return v0

    .line 2221
    :catch_0
    move-exception v0

    .line 2224
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 2
    .parameter "size"

    .prologue
    .line 287
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mInvalidSizeStr:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 290
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleDisableable()Z
    .locals 8

    .prologue
    .line 541
    const/4 v0, 0x0

    .line 546
    .local v0, disableable:Z
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const-string v6, "android"

    const/16 v7, 0x40

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 548
    .local v4, sys:Landroid/content/pm/PackageInfo;
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 549
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 550
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 551
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 552
    .local v2, homes:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->isThisASystemPackage()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 554
    :cond_1
    const/4 v0, 0x0

    .line 555
    sget-boolean v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v5, :cond_2

    .line 556
    const-string v5, "Settings:InstalledAppDetails"

    const-string v6, "[initDisableButton()] app signed with the system cert or launcher app in the system"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    .end local v2           #homes:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #sys:Landroid/content/pm/PackageInfo;
    :cond_2
    :goto_0
    return v0

    .line 558
    .restart local v2       #homes:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v4       #sys:Landroid/content/pm/PackageInfo;
    :cond_3
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_4

    .line 559
    const/4 v0, 0x1

    goto :goto_0

    .line 561
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 563
    .end local v2           #homes:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #sys:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 564
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "Settings:InstalledAppDetails"

    const-string v6, "Unable to get package info"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private initActionBar()V
    .locals 1

    .prologue
    .line 1002
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    if-eqz v0, :cond_1

    .line 1003
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    if-nez v0, :cond_0

    .line 1004
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getHtcActionBar()Lcom/htc/widget/ActionBarExt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    .line 1008
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-nez v0, :cond_1

    .line 1009
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    .line 1012
    :cond_1
    return-void
.end method

.method private initControlButtons()V
    .locals 3

    .prologue
    .line 425
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "initControlButtons()"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    invoke-static {v0, v1, v2}, Lcom/android/settings/applications/InstalledAppDetails;->dumpLog(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/applications/ApplicationsState$AppEntry;)V

    .line 429
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->initDisableButton()V

    .line 430
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->initUninstallButton()V

    .line 431
    return-void
.end method

.method private initDataButtons()V
    .locals 7

    .prologue
    const v5, 0x7f0c0f68

    const/4 v6, 0x0

    const/16 v1, 0x68

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 294
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x41

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 301
    iput-boolean v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCanClearData:Z

    .line 312
    :goto_0
    return-void

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 304
    const v0, 0x7f0c0f7a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 307
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private initDisableButton()V
    .locals 10

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_a

    const v8, 0x7f0c0f66

    .line 436
    .local v8, textId:I
    :goto_0
    const/4 v6, 0x1

    .line 437
    .local v6, enabled:Z
    const/4 v9, 0x0

    .line 440
    .local v9, visibility:I
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 441
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->handleDisableable()Z

    move-result v6

    .line 446
    :cond_0
    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails$6;->$SwitchMap$com$android$settings$framework$content$pm$HtcApplicationInfo$ConfiguredButtonState:[I

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1}, Lcom/android/settings/framework/content/pm/HtcApplicationInfo;->getConfiguredButton(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 465
    :cond_1
    :goto_1
    sget v0, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredExtFlag;->DISABLE_BUTTON_DISABLED:I

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->configuredExtFlag:I

    and-int/2addr v0, v1

    sget v1, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredExtFlag;->DISABLE_BUTTON_DISABLED:I

    if-ne v0, v1, :cond_2

    .line 468
    const/4 v6, 0x0

    .line 469
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_2

    .line 470
    const-string v0, "Settings:InstalledAppDetails"

    const-string v1, "[initDisableButton()] configuredExtFlag: DISABLE_BUTTON_DISABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_2
    sget v0, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredExtFlag;->DISABLE_BUTTON_GONE:I

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->configuredExtFlag:I

    and-int/2addr v0, v1

    sget v1, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredExtFlag;->DISABLE_BUTTON_GONE:I

    if-ne v0, v1, :cond_3

    .line 477
    const/16 v9, 0x8

    .line 478
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_3

    .line 479
    const-string v0, "Settings:InstalledAppDetails"

    const-string v1, "[initDisableButton()] configuredExtFlag: DISABLE_BUTTON_GONE"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDisableButtonSet:Lcom/android/settings/applications/HtcUnsupportDisableSet;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/HtcUnsupportDisableSet;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 486
    const/4 v6, 0x0

    .line 487
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_4

    .line 488
    const-string v0, "Settings:InstalledAppDetails"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initDisableButton()] mDisableButtonSet.contains(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.threelm.dm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 495
    const/4 v6, 0x0

    .line 496
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_5

    .line 497
    const-string v0, "Settings:InstalledAppDetails"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initDisableButton()] packageName.startsWith(com.threelm.dm): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_5
    invoke-direct {p0, v6}, Lcom/android/settings/applications/InstalledAppDetails;->isEnabledFor3LM(Z)Z

    move-result v6

    .line 508
    invoke-direct {p0, v6}, Lcom/android/settings/applications/InstalledAppDetails;->isEnabledForDevicePolicy(Z)Z

    move-result v6

    .line 511
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isDisabledInDemoMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 512
    const/4 v6, 0x0

    .line 518
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, v1}, Lcom/android/settings/applications/HtcPackageBlocker;->isInBlockedSet(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 519
    const/4 v6, 0x0

    .line 521
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_7

    .line 522
    const-string v0, "Settings:InstalledAppDetails"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initDisableButton()] HtcPackageBlocker.isInBlockedSet(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_7
    if-eqz v6, :cond_9

    invoke-static {}, Lcom/android/settings/framework/util/HtcMdmUtil;->isMDMApiSupported()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 528
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getBlockedRemovalAP()Ljava/util/List;

    move-result-object v7

    .line 529
    .local v7, pkgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_9

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 530
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_8

    .line 531
    const-string v0, "Settings:InstalledAppDetails"

    const-string v1, "[initDisableButton()] grey out for MDM policy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_8
    const/4 v6, 0x0

    .line 537
    .end local v7           #pkgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_9
    const/16 v1, 0x6b

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 538
    return-void

    .line 435
    .end local v6           #enabled:Z
    .end local v8           #textId:I
    .end local v9           #visibility:I
    :cond_a
    const v8, 0x7f0c0f67

    goto/16 :goto_0

    .line 448
    .restart local v6       #enabled:Z
    .restart local v8       #textId:I
    .restart local v9       #visibility:I
    :pswitch_0
    const/4 v6, 0x0

    .line 449
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_1

    .line 450
    const-string v0, "Settings:InstalledAppDetails"

    const-string v1, "[initDisableButton()] configuredButton: DISABLE_BUTTON_DISABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 454
    :pswitch_1
    const/4 v6, 0x1

    .line 455
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_1

    .line 456
    const-string v0, "Settings:InstalledAppDetails"

    const-string v1, "[initDisableButton()] configuredButton: DISABLE_BUTTON_ENABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 446
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initHardwareAccelerationControl()V
    .locals 9

    .prologue
    const/16 v1, 0x6f

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 814
    const/4 v8, 0x1

    .line 817
    .local v8, enabled:Z
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->isShowHardwareAccelerationControl()Z

    move-result v7

    .line 819
    .local v7, bShow:Z
    if-nez v7, :cond_0

    move-object v2, v5

    .line 821
    check-cast v2, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 841
    :goto_0
    return-void

    .line 826
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getHWAccEnabled()Z

    move-result v8

    .line 828
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHWAccSwitch:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 829
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHWAccSwitchItem:Landroid/view/ViewGroup;

    new-instance v2, Lcom/android/settings/applications/InstalledAppDetails$3;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/InstalledAppDetails$3;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v2, v5

    .line 837
    check-cast v2, Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 840
    const/16 v2, 0x6e

    move-object v3, v5

    check-cast v3, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v1, p0

    move-object v6, v5

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private initMoveButton()V
    .locals 13

    .prologue
    const v4, 0x7f0c0f9f

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v1, 0x69

    const/4 v3, 0x0

    .line 345
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->supportMoveAppOptions()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v2, v3

    .line 346
    check-cast v2, Ljava/lang/String;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v0, p0

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 412
    :goto_0
    return-void

    .line 354
    :cond_0
    const/4 v10, 0x0

    .line 355
    .local v10, dataOnly:Z
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_2

    move v10, v8

    .line 356
    :goto_1
    const/4 v11, 0x1

    .line 357
    .local v11, moveDisable:Z
    if-eqz v10, :cond_3

    .line 358
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 388
    :goto_2
    if-nez v11, :cond_1

    .line 389
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->getMoveAppTargetVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v12

    .line 391
    .local v12, volume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    invoke-interface {v12}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 392
    const/4 v11, 0x1

    .line 394
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_1

    .line 395
    const-string v0, "Settings:InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "volume type:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v12}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getType()Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", state:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v12}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const-string v0, "Settings:InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveDisable: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    .end local v12           #volume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    :cond_1
    if-eqz v11, :cond_6

    move-object v6, v3

    .line 405
    check-cast v6, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v4, p0

    move v5, v1

    move-object v8, v3

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .end local v11           #moveDisable:Z
    :cond_2
    move v10, v7

    .line 355
    goto :goto_1

    .line 360
    .restart local v11       #moveDisable:Z
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x4

    and-int/2addr v0, v2

    if-eqz v0, :cond_4

    .line 361
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 364
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 366
    :cond_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 368
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/settings/applications/CanBeOnSdCardChecker;

    invoke-virtual {v0}, Lcom/android/settings/applications/CanBeOnSdCardChecker;->init()V

    .line 369
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/settings/applications/CanBeOnSdCardChecker;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/CanBeOnSdCardChecker;->check(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_5

    move v11, v8

    :goto_3
    goto/16 :goto_2

    :cond_5
    move v11, v7

    goto :goto_3

    :cond_6
    move-object v6, v3

    .line 408
    check-cast v6, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object v4, p0

    move v5, v1

    move-object v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    goto/16 :goto_0
.end method

.method private initNotificationButton()V
    .locals 14

    .prologue
    const/4 v4, 0x0

    .line 756
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v12

    .line 758
    .local v12, nm:Landroid/app/INotificationManager;
    const/4 v11, 0x1

    .line 759
    .local v11, enabled:Z
    const/4 v13, 0x0

    .line 761
    .local v13, visibility:I
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v12, v0, v1}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v11

    .line 763
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 764
    const-string v0, "Settings:InstalledAppDetails"

    const-string v1, "[initNotificationButton()] INotificationManager.areNotificationsEnabledForPackage()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 770
    :cond_0
    :goto_0
    const/16 v1, 0x6c

    move-object v2, v4

    check-cast v2, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 771
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->isThisASystemPackage()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 773
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_1

    .line 774
    const-string v0, "Settings:InstalledAppDetails"

    const-string v1, "[initNotificationButton()] isThisASystemPackage()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    :cond_1
    const/4 v11, 0x0

    .line 790
    :goto_1
    sget v0, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredExtFlag;->NOTIFICATION_BUTTON_DISABLE:I

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->configuredExtFlag:I

    and-int/2addr v0, v1

    sget v1, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredExtFlag;->NOTIFICATION_BUTTON_DISABLE:I

    if-ne v0, v1, :cond_2

    .line 793
    const/4 v11, 0x0

    .line 794
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_2

    .line 795
    const-string v0, "Settings:InstalledAppDetails"

    const-string v1, "[initNotificationButton()] configuredExtFlag: NOTIFICATION_BUTTON_DISABLE"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :cond_2
    sget v0, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredExtFlag;->NOTIFICATION_BUTTON_GONE:I

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->configuredExtFlag:I

    and-int/2addr v0, v1

    sget v1, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredExtFlag;->NOTIFICATION_BUTTON_GONE:I

    if-ne v0, v1, :cond_3

    .line 802
    const/16 v13, 0x8

    .line 803
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_3

    .line 804
    const-string v0, "Settings:InstalledAppDetails"

    const-string v1, "[initNotificationButton()] configuredExtFlag: NOTIFICATION_BUTTON_GONE"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :cond_3
    const/16 v6, 0x6d

    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v5, p0

    move-object v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 810
    return-void

    .line 779
    :cond_4
    const/4 v11, 0x1

    .line 780
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitch:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcCheckBox;->setOnCheckedChangeListener(Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;)V

    .line 781
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitchItem:Lcom/htc/widget/HtcListItem;

    new-instance v1, Lcom/android/settings/applications/InstalledAppDetails$2;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/InstalledAppDetails$2;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 766
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private initPrefixText()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 2790
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v3, 0x7f090116

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem2LineText;

    .line 2791
    .local v1, prefixText:Lcom/htc/widget/HtcListItem2LineText;
    const v2, 0x7f0c0f5e

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 2792
    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 2793
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v3, 0x7f090118

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #prefixText:Lcom/htc/widget/HtcListItem2LineText;
    check-cast v1, Lcom/htc/widget/HtcListItem2LineText;

    .line 2794
    .restart local v1       #prefixText:Lcom/htc/widget/HtcListItem2LineText;
    const v2, 0x7f0c0f5f

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 2795
    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 2796
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v3, 0x7f09011d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #prefixText:Lcom/htc/widget/HtcListItem2LineText;
    check-cast v1, Lcom/htc/widget/HtcListItem2LineText;

    .line 2797
    .restart local v1       #prefixText:Lcom/htc/widget/HtcListItem2LineText;
    const v2, 0x7f0c0f61

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 2798
    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 2808
    const/4 v2, 0x1

    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->supportMoveAppOptions()Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 2809
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->checkMoveAppTargetIsPhoneStorage()Z

    move-result v0

    .line 2816
    .local v0, bIsPhoneStorageSettings:Z
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v3, 0x7f09011a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #prefixText:Lcom/htc/widget/HtcListItem2LineText;
    check-cast v1, Lcom/htc/widget/HtcListItem2LineText;

    .line 2817
    .restart local v1       #prefixText:Lcom/htc/widget/HtcListItem2LineText;
    if-eqz v0, :cond_1

    const v2, 0x7f0c0ad7

    :goto_0
    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 2820
    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 2827
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v3, 0x7f09011f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #prefixText:Lcom/htc/widget/HtcListItem2LineText;
    check-cast v1, Lcom/htc/widget/HtcListItem2LineText;

    .line 2828
    .restart local v1       #prefixText:Lcom/htc/widget/HtcListItem2LineText;
    if-eqz v0, :cond_2

    const v2, 0x7f0c0ad8

    :goto_1
    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 2831
    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 2839
    .end local v0           #bIsPhoneStorageSettings:Z
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mTotalSize:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryTextVisibility(I)V

    .line 2840
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppSize:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryTextVisibility(I)V

    .line 2841
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataSize:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryTextVisibility(I)V

    .line 2842
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mExternalCodeSize:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryTextVisibility(I)V

    .line 2843
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mExternalDataSize:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryTextVisibility(I)V

    .line 2846
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v3, 0x7f090124

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #prefixText:Lcom/htc/widget/HtcListItem2LineText;
    check-cast v1, Lcom/htc/widget/HtcListItem2LineText;

    .line 2847
    .restart local v1       #prefixText:Lcom/htc/widget/HtcListItem2LineText;
    const v2, 0x7f0c0f5b

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 2848
    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 2849
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCacheSize:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryTextVisibility(I)V

    .line 2862
    return-void

    .line 2817
    .restart local v0       #bIsPhoneStorageSettings:Z
    :cond_1
    const v2, 0x7f0c0ad9

    goto :goto_0

    .line 2828
    :cond_2
    const v2, 0x7f0c0ada

    goto :goto_1
.end method

.method private initUninstallButton()V
    .locals 13

    .prologue
    const/4 v5, 0x1

    .line 571
    const v11, 0x7f0c0f63

    .line 572
    .local v11, textId:I
    const/4 v6, 0x0

    .line 573
    .local v6, enabled:Z
    const/4 v12, 0x0

    .line 576
    .local v12, visibility:I
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    move v0, v5

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 577
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v0, :cond_7

    .line 578
    const v11, 0x7f0c0f69

    .line 579
    const/4 v6, 0x1

    .line 581
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 582
    const-string v0, "Settings:InstalledAppDetails"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initUninstallButton()] mUpdatedSysApp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_0
    :goto_1
    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails$6;->$SwitchMap$com$android$settings$framework$content$pm$HtcApplicationInfo$ConfiguredButtonState:[I

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1}, Lcom/android/settings/framework/content/pm/HtcApplicationInfo;->getConfiguredButton(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredButtonState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 630
    :cond_1
    :goto_2
    :pswitch_0
    sget v0, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredExtFlag;->UNINSTALL_BUTTON_DISABLE:I

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->configuredExtFlag:I

    and-int/2addr v0, v1

    sget v1, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredExtFlag;->UNINSTALL_BUTTON_DISABLE:I

    if-ne v0, v1, :cond_2

    .line 633
    const/4 v6, 0x0

    .line 634
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_2

    .line 635
    const-string v0, "Settings:InstalledAppDetails"

    const-string v1, "[initUninstallButton()] configuredExtFlag: UNINSTALL_BUTTON_DISABLE"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_2
    sget v0, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredExtFlag;->UNINSTALL_BUTTON_GONE:I

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->configuredExtFlag:I

    and-int/2addr v0, v1

    sget v1, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredExtFlag;->UNINSTALL_BUTTON_GONE:I

    if-ne v0, v1, :cond_3

    .line 642
    const/16 v12, 0x8

    .line 643
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_3

    .line 644
    const-string v0, "Settings:InstalledAppDetails"

    const-string v1, "[initUninstallButton()] configuredExtFlag: UNINSTALL_BUTTON_GONE"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, v1}, Lcom/android/settings/applications/HtcPackageBlocker;->isInBlockedSet(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 653
    const/4 v6, 0x1

    .line 654
    const/4 v12, 0x0

    .line 656
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_4

    .line 657
    const-string v0, "Settings:InstalledAppDetails"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initUninstallButton()] HtcPackageBlocker.isInBlockedSet(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/applications/HtcUninstallButtonDisabledSet;->contains(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 664
    const/4 v6, 0x0

    .line 666
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_5

    .line 667
    const-string v0, "Settings:InstalledAppDetails"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initUninstallButton()] HtcUninstallButtonDisabledSet.contains(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :cond_5
    invoke-direct {p0, v6}, Lcom/android/settings/applications/InstalledAppDetails;->isEnabledFor3LM(Z)Z

    move-result v6

    .line 677
    invoke-direct {p0, v6}, Lcom/android/settings/applications/InstalledAppDetails;->isEnabledForDevicePolicy(Z)Z

    move-result v6

    .line 680
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getInstalledHTCPackages()Ljava/util/List;

    move-result-object v7

    .line 681
    .local v7, htcPackagelist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_a

    .line 682
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_9

    .line 683
    const-string v0, "Settings:InstalledAppDetails"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPm.getInstalledHTCPackages(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 685
    .local v9, item:Ljava/lang/String;
    const-string v0, "Settings:InstalledAppDetails"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 576
    .end local v7           #htcPackagelist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #item:Ljava/lang/String;
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 586
    :cond_7
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    .line 587
    const/4 v6, 0x0

    .line 590
    const/16 v12, 0x8

    .line 592
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 593
    const-string v0, "Settings:InstalledAppDetails"

    const-string v1, "[initUninstallButton()] ApplicationInfo.FLAG_SYSTEM is on"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 597
    :cond_8
    const/4 v6, 0x1

    .line 599
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 600
    const-string v0, "Settings:InstalledAppDetails"

    const-string v1, "[initUninstallButton()] ApplicationInfo.FLAG_SYSTEM is off"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 613
    :pswitch_1
    const/4 v6, 0x0

    .line 614
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_1

    .line 615
    const-string v0, "Settings:InstalledAppDetails"

    const-string v1, "[initUninstallButton()] configuredButton: DISABLE_BUTTON_DISABLED or UNINSTALL_BUTTON_DISABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 619
    :pswitch_2
    const/4 v6, 0x1

    .line 620
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_1

    .line 621
    const-string v0, "Settings:InstalledAppDetails"

    const-string v1, "[initUninstallButton()] configuredButton: UNINSTALL_BUTTON_ENABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 688
    .restart local v7       #htcPackagelist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_9
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 689
    const/4 v6, 0x0

    .line 690
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_a

    .line 691
    const-string v0, "Settings:InstalledAppDetails"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initUninstallButton()] mPm.getInstalledHTCPackages() contains: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_a
    if-eqz v6, :cond_c

    invoke-static {}, Lcom/android/settings/framework/util/HtcMdmUtil;->isMDMApiSupported()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 700
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getBlockedRemovalAP()Ljava/util/List;

    move-result-object v10

    .line 701
    .local v10, pkgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v10, :cond_c

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v10, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 702
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_b

    .line 703
    const-string v0, "Settings:InstalledAppDetails"

    const-string v1, "[initUninstallButton()] grey out for MDM policy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_b
    const/4 v6, 0x0

    .line 709
    .end local v10           #pkgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_c
    const/16 v1, 0x67

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 710
    return-void

    .line 607
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initiateClearUserData()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1659
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1661
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1662
    .local v1, packageName:Ljava/lang/String;
    const-string v3, "Settings:InstalledAppDetails"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clearing user data for package : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

    if-nez v3, :cond_0

    .line 1664
    new-instance v3, Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

    .line 1666
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getInternalActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1668
    .local v0, am:Landroid/app/ActivityManager;
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-virtual {v0, v1, v3}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v2

    .line 1669
    .local v2, res:Z
    if-nez v2, :cond_1

    .line 1671
    const-string v3, "Settings:InstalledAppDetails"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldnt clear application user data for package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    const/4 v3, 0x4

    invoke-direct {p0, v3, v6}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    .line 1676
    :goto_0
    return-void

    .line 1674
    :cond_1
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v4, 0x7f0c0f87

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private isEnabledFor3LM(Z)Z
    .locals 6
    .parameter "enabled"

    .prologue
    .line 728
    const-string v3, "DeviceManager3LM"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IDeviceManager3LM$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceManager3LM;

    move-result-object v0

    .line 731
    .local v0, dm:Landroid/os/IDeviceManager3LM;
    if-nez v0, :cond_0

    move v2, p1

    .line 751
    .end local p1
    .local v2, enabled:Z
    :goto_0
    return v2

    .line 736
    .end local v2           #enabled:Z
    .restart local p1
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v3}, Landroid/os/IDeviceManager3LM;->checkAppUninstallPolicies(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v3}, Landroid/os/IDeviceManager3LM;->isPackageDisabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 738
    :cond_1
    const/4 p1, 0x0

    .line 739
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_2

    .line 740
    const-string v3, "Settings:InstalledAppDetails"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dm.checkAppUninstallPolicies(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v5}, Landroid/os/IDeviceManager3LM;->checkAppUninstallPolicies(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    const-string v3, "Settings:InstalledAppDetails"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dm.isPackageDisabled(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v5}, Landroid/os/IDeviceManager3LM;->isPackageDisabled(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    move v2, p1

    .line 751
    .end local p1
    .restart local v2       #enabled:Z
    goto :goto_0

    .line 746
    .end local v2           #enabled:Z
    .restart local p1
    :catch_0
    move-exception v1

    .line 748
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "Settings:InstalledAppDetails"

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private isEnabledForDevicePolicy(Z)Z
    .locals 2
    .parameter "enabled"

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    const/4 p1, 0x0

    .line 717
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 718
    const-string v0, "Settings:InstalledAppDetails"

    const-string v1, "mDpm.packageHasActiveAdmins()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :cond_0
    return p1
.end method

.method private isShowHardwareAccelerationControl()Z
    .locals 5

    .prologue
    .line 844
    const/4 v0, 0x0

    .line 847
    .local v0, bShow:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->isShowHWAcc(Ljava/lang/String;)Z

    move-result v0

    .line 849
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_0

    .line 850
    const-string v2, "Settings:InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isShowHardwareAccelerationControl, name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", show = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 859
    :cond_0
    :goto_0
    return v0

    .line 852
    :catch_0
    move-exception v1

    .line 853
    .local v1, e:Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_1

    .line 854
    const-string v2, "Settings:InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isShowHardwareAccelerationControl, exception, e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isThisASystemPackage()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 416
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const-string v4, "android"

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 417
    .local v1, sys:Landroid/content/pm/PackageInfo;
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 420
    .end local v1           #sys:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v2

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private postCreateView()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/16 v13, 0x8

    const/4 v12, 0x0

    .line 2635
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f040091

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    .line 2637
    .local v8, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getInternalActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f0c0f9b

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    .line 2640
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v10, 0x7f090115

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/HtcListItemSeparator;

    .line 2642
    .local v7, storageCategory:Lcom/htc/widget/HtcListItemSeparator;
    const v9, 0x7f0c0f54

    invoke-virtual {v7, v12, v9}, Lcom/htc/widget/HtcListItemSeparator;->setText(II)V

    .line 2644
    const v9, 0x7f090117

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcListItem2LineStamp;

    iput-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mTotalSize:Lcom/htc/widget/HtcListItem2LineStamp;

    .line 2645
    const v9, 0x7f090119

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcListItem2LineStamp;

    iput-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppSize:Lcom/htc/widget/HtcListItem2LineStamp;

    .line 2646
    const v9, 0x7f09011e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcListItem2LineStamp;

    iput-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataSize:Lcom/htc/widget/HtcListItem2LineStamp;

    .line 2647
    const v9, 0x7f09011b

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcListItem2LineStamp;

    iput-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mExternalCodeSize:Lcom/htc/widget/HtcListItem2LineStamp;

    .line 2648
    const v9, 0x7f090120

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcListItem2LineStamp;

    iput-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mExternalDataSize:Lcom/htc/widget/HtcListItem2LineStamp;

    .line 2658
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->supportMoveAppOptions()Z

    move-result v9

    if-nez v9, :cond_1

    .line 2659
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mExternalCodeSize:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v9}, Lcom/htc/widget/HtcListItem2LineStamp;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9, v13}, Landroid/view/View;->setVisibility(I)V

    .line 2660
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mExternalDataSize:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v9}, Lcom/htc/widget/HtcListItem2LineStamp;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9, v13}, Landroid/view/View;->setVisibility(I)V

    .line 2665
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v10, 0x7f09011c

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2666
    .local v3, dividerView:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 2667
    invoke-virtual {v3, v13}, Landroid/view/View;->setVisibility(I)V

    .line 2670
    :cond_0
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v10, 0x7f090121

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2671
    if-eqz v3, :cond_1

    .line 2672
    invoke-virtual {v3, v13}, Landroid/view/View;->setVisibility(I)V

    .line 2680
    .end local v3           #dividerView:Landroid/view/View;
    :cond_1
    const v9, 0x7f0901ce

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2681
    .local v0, btnPanel:Landroid/view/View;
    const v9, 0x7f090110

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    .line 2682
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const v10, 0x7f0c0f5d

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(I)V

    .line 2683
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v9, v12}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2684
    const v9, 0x7f090112

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopPanelDivider:Landroid/view/View;

    .line 2685
    const v9, 0x7f090114

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    .line 2686
    const v9, 0x7f090111

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDisableButton:Landroid/widget/Button;

    .line 2689
    const v9, 0x7f090113

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcListItem;

    iput-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButtonItem:Lcom/htc/widget/HtcListItem;

    .line 2692
    const v9, 0x7f090122

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2693
    .local v2, data_buttons_panel:Landroid/view/View;
    const v9, 0x7f0900f3

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    .line 2694
    const v9, 0x7f0900f4

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    .line 2697
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v10, 0x7f090123

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemSeparator;

    .line 2699
    .local v1, cacheCategory:Lcom/htc/widget/HtcListItemSeparator;
    const v9, 0x7f0c0f59

    invoke-virtual {v1, v12, v9}, Lcom/htc/widget/HtcListItemSeparator;->setText(II)V

    .line 2701
    const v9, 0x7f090125

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcListItem2LineStamp;

    iput-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCacheSize:Lcom/htc/widget/HtcListItem2LineStamp;

    .line 2702
    const v9, 0x7f090126

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    .line 2703
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcListItem;

    iput-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheButtonItem:Lcom/htc/widget/HtcListItem;

    .line 2705
    const v9, 0x7f090129

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    .line 2708
    const v9, 0x7f09012a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mScreenCompatSection:Landroid/view/View;

    .line 2709
    const v9, 0x7f09012b

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcCheckBox;

    iput-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAskCompatibilityCB:Lcom/htc/widget/HtcCheckBox;

    .line 2710
    const v9, 0x7f09012c

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcCheckBox;

    iput-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mEnableCompatibilityCB:Lcom/htc/widget/HtcCheckBox;

    .line 2712
    const v9, 0x7f09010a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcListItem;

    iput-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitchItem:Lcom/htc/widget/HtcListItem;

    .line 2713
    const v9, 0x7f09010c

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcCheckBox;

    iput-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitch:Lcom/htc/widget/HtcCheckBox;

    .line 2714
    const v9, 0x7f09010b

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListItem2LineText;

    .line 2716
    .local v5, notificationSwitchText:Lcom/htc/widget/HtcListItem2LineText;
    const v9, 0x7f0c12cb

    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 2717
    invoke-virtual {v5, v13}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 2720
    const v9, 0x7f09010d

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHWAccSwitchItem:Landroid/view/ViewGroup;

    .line 2721
    const v9, 0x7f09010f

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcCheckBox;

    iput-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHWAccSwitch:Lcom/htc/widget/HtcCheckBox;

    .line 2722
    const v9, 0x7f09010e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItem2LineText;

    .line 2724
    .local v4, hwAccSwitchText:Lcom/htc/widget/HtcListItem2LineText;
    const v9, 0x7f0c1205

    invoke-virtual {v4, v9}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 2725
    const v9, 0x7f0c1206

    invoke-virtual {v4, v9}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(I)V

    .line 2726
    invoke-virtual {v4, v12}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextSingleLine(Z)V

    .line 2727
    invoke-virtual {v4, v12}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextVisibility(I)V

    .line 2728
    invoke-virtual {v4, v12}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 2731
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v10, 0x7f09012e

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcListItemSeparator;

    .line 2733
    .local v6, permissionCategory:Lcom/htc/widget/HtcListItemSeparator;
    const v9, 0x7f0c0f58

    invoke-virtual {v6, v12, v9}, Lcom/htc/widget/HtcListItemSeparator;->setText(II)V

    .line 2735
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v10, 0x7f09000a

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcListItem;

    iput-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppSnippet:Lcom/htc/widget/HtcListItem;

    .line 2737
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppSnippet:Lcom/htc/widget/HtcListItem;

    invoke-virtual {v9, v14}, Lcom/htc/widget/HtcListItem;->setFirstComponentAlign(Z)V

    .line 2738
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v10, 0x7f09012d

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPermsView:Landroid/widget/LinearLayout;

    .line 2740
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPermsView:Landroid/widget/LinearLayout;

    const v10, 0x7f09012f

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSecurityBillingDesc:Landroid/widget/TextView;

    .line 2742
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPermsView:Landroid/widget/LinearLayout;

    const v10, 0x7f090130

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSecurityBillingList:Landroid/widget/LinearLayout;

    .line 2745
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v10, 0x7f090132

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSecuritySettingsDescText:Landroid/widget/TextView;

    .line 2748
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPermsView:Landroid/widget/LinearLayout;

    const v10, 0x7f090133

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSecurityList:Landroid/widget/LinearLayout;

    .line 2749
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppSnippet:Lcom/htc/widget/HtcListItem;

    const v10, 0x7f090010

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcListItemColorIcon;

    iput-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppIcon:Lcom/htc/widget/HtcListItemColorIcon;

    .line 2751
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v10, 0x7f090127

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcListItemSeparator;

    iput-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAutoLaunchTitleView:Lcom/htc/widget/HtcListItemSeparator;

    .line 2752
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAutoLaunchTitleView:Lcom/htc/widget/HtcListItemSeparator;

    const v10, 0x7f0c0f55

    invoke-virtual {v9, v12, v10}, Lcom/htc/widget/HtcListItemSeparator;->setText(II)V

    .line 2754
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v10, 0x7f090128

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcListItemLabeledLayout;

    iput-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAutoLaunchView:Lcom/htc/widget/HtcListItemLabeledLayout;

    .line 2755
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppSnippet:Lcom/htc/widget/HtcListItem;

    const v10, 0x7f090008

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppText:Lcom/htc/widget/HtcListItem2LineText;

    .line 2757
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getUiHandler()Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0xb

    invoke-static {v9, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 2759
    iput-boolean v14, p0, Lcom/android/settings/applications/InstalledAppDetails;->mIsViewRootReady:Z

    .line 2761
    iget-boolean v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mIsAppStateResume:Z

    if-eqz v9, :cond_2

    iget-boolean v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mIsContentViewShowed:Z

    if-nez v9, :cond_2

    .line 2762
    iput-boolean v14, p0, Lcom/android/settings/applications/InstalledAppDetails;->mIsContentViewShowed:Z

    .line 2763
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getUiHandler()Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x4

    invoke-static {v9, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 2765
    :cond_2
    return-void
.end method

.method private processClearMsg(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 1609
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1610
    .local v1, result:I
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1611
    .local v0, packageName:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v3, 0x7f0c0f68

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 1612
    if-ne v1, v4, :cond_0

    .line 1613
    const-string v2, "Settings:InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleared user data for package : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 1618
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->checkForceStop()V

    .line 1619
    return-void

    .line 1616
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private processMoveMsg(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    .line 1640
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1641
    .local v1, result:I
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1643
    .local v0, packageName:Ljava/lang/String;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 1644
    if-ne v1, v5, :cond_0

    .line 1645
    const-string v2, "Settings:InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moved resources for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 1651
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getNonUiHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1652
    return-void

    .line 1649
    :cond_0
    const/4 v2, 0x6

    invoke-direct {p0, v2, v1}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0
.end method

.method private refreshAppIcon()V
    .locals 2

    .prologue
    .line 2865
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppIcon:Lcom/htc/widget/HtcListItemColorIcon;

    if-nez v0, :cond_0

    .line 2869
    :goto_0
    return-void

    .line 2868
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppIcon:Lcom/htc/widget/HtcListItemColorIcon;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private refreshButton(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 4
    .parameter "widgetId"
    .parameter "text"
    .parameter "enabled"
    .parameter "visibility"
    .parameter "setListener"

    .prologue
    .line 3051
    const/4 v0, 0x0

    .line 3052
    .local v0, button:Landroid/widget/Button;
    const/4 v1, 0x0

    .line 3054
    .local v1, buttonItem:Lcom/htc/widget/HtcListItem;
    packed-switch p1, :pswitch_data_0

    .line 3113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid widgetId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/applications/InstalledAppDetails;->Log(Ljava/lang/String;)V

    .line 3136
    :cond_0
    :goto_0
    return-void

    .line 3056
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    .line 3117
    :goto_1
    if-eqz v0, :cond_0

    .line 3121
    if-eqz p2, :cond_1

    .line 3122
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3124
    :cond_1
    if-eqz p3, :cond_2

    .line 3125
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3127
    :cond_2
    if-eqz p4, :cond_3

    .line 3128
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 3129
    if-eqz v1, :cond_3

    .line 3130
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem;->setVisibility(I)V

    .line 3133
    :cond_3
    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3134
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 3059
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    .line 3060
    goto :goto_1

    .line 3062
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    .line 3063
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButtonItem:Lcom/htc/widget/HtcListItem;

    .line 3064
    if-eqz p4, :cond_4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_4

    .line 3065
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->setForceStopPanelDividerVisible(Z)V

    goto :goto_1

    .line 3067
    :cond_4
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->setForceStopPanelDividerVisible(Z)V

    goto :goto_1

    .line 3071
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    .line 3072
    goto :goto_1

    .line 3074
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    .line 3075
    goto :goto_1

    .line 3077
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    .line 3078
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheButtonItem:Lcom/htc/widget/HtcListItem;

    .line 3079
    goto :goto_1

    .line 3081
    :pswitch_6
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDisableButton:Landroid/widget/Button;

    .line 3082
    goto :goto_1

    .line 3084
    :pswitch_7
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitch:Lcom/htc/widget/HtcCheckBox;

    if-eqz v2, :cond_0

    .line 3087
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitch:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_0

    .line 3090
    :pswitch_8
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitchItem:Lcom/htc/widget/HtcListItem;

    if-eqz v2, :cond_0

    .line 3093
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitchItem:Lcom/htc/widget/HtcListItem;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem;->setEnabled(Z)V

    .line 3094
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitchItem:Lcom/htc/widget/HtcListItem;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem;->setVisibility(I)V

    goto :goto_0

    .line 3098
    :pswitch_9
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHWAccSwitch:Lcom/htc/widget/HtcCheckBox;

    if-eqz v2, :cond_0

    .line 3101
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHWAccSwitch:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 3105
    :pswitch_a
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHWAccSwitchItem:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 3108
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHWAccSwitchItem:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 3109
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHWAccSwitchItem:Landroid/view/ViewGroup;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 3054
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private refreshButtons()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 1622
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveInProgress:Z

    if-nez v0, :cond_0

    .line 1623
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->initControlButtons()V

    .line 1624
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->initDataButtons()V

    .line 1625
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->initMoveButton()V

    .line 1626
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->initNotificationButton()V

    .line 1627
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->initHardwareAccelerationControl()V

    .line 1637
    :goto_0
    return-void

    .line 1629
    :cond_0
    const/16 v1, 0x69

    const v0, 0x7f0c0fa2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 1632
    const/16 v1, 0x67

    move-object v2, v4

    check-cast v2, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 1634
    const/16 v1, 0x6b

    move-object v2, v4

    check-cast v2, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private refreshExtraAppLabelWidget()V
    .locals 0

    .prologue
    .line 2878
    return-void
.end method

.method private refreshLayout(ILjava/lang/Integer;)V
    .locals 3
    .parameter "widgetId"
    .parameter "visibility"

    .prologue
    .line 2881
    const/4 v0, 0x0

    .line 2882
    .local v0, layout:Landroid/view/View;
    packed-switch p1, :pswitch_data_0

    .line 2893
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid widgetId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/applications/InstalledAppDetails;->Log(Ljava/lang/String;)V

    .line 2904
    :cond_0
    :goto_0
    return-void

    .line 2884
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPermsView:Landroid/widget/LinearLayout;

    .line 2897
    :goto_1
    if-eqz v0, :cond_0

    .line 2901
    if-eqz p2, :cond_0

    .line 2902
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2887
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSecurityList:Landroid/widget/LinearLayout;

    .line 2888
    goto :goto_1

    .line 2890
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mScreenCompatSection:Landroid/view/View;

    .line 2891
    goto :goto_1

    .line 2882
    nop

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private refreshPremiumSmsPermission(IILjava/lang/String;)V
    .locals 5
    .parameter "nShow"
    .parameter "nPremiumSmsPermission"
    .parameter "packageName"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 2923
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPermsView:Landroid/widget/LinearLayout;

    if-nez v2, :cond_1

    .line 2953
    :cond_0
    :goto_0
    return-void

    .line 2927
    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSecurityBillingDesc:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSecurityBillingList:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 2931
    if-eqz p1, :cond_2

    .line 2933
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSecurityBillingDesc:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2934
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSecurityBillingList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2935
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPermsView:Landroid/widget/LinearLayout;

    const v3, 0x7f090131

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcSpinner;

    .line 2937
    .local v1, spinner:Lcom/htc/widget/HtcSpinner;
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getInternalActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f080061

    const v4, 0x2090008

    invoke-static {v2, v3, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 2940
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v2, 0x2090007

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 2941
    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2942
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0f9a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcSpinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 2944
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 2945
    new-instance v2, Lcom/android/settings/applications/InstalledAppDetails$PremiumSmsSelectionListener;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    invoke-direct {v2, p3, v3}, Lcom/android/settings/applications/InstalledAppDetails$PremiumSmsSelectionListener;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/ISms;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcSpinner;->setOnItemSelectedListener(Lcom/htc/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_0

    .line 2949
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v1           #spinner:Lcom/htc/widget/HtcSpinner;
    :cond_2
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSecurityBillingDesc:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2950
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSecurityBillingList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private refreshSecurityView(Landroid/view/View;)V
    .locals 2
    .parameter "aspView"

    .prologue
    .line 2907
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPermsView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSecurityList:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 2919
    :cond_0
    :goto_0
    return-void

    .line 2911
    :cond_1
    if-eqz p1, :cond_2

    .line 2912
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPermsView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2914
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSecurityList:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2915
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSecurityList:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 2917
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPermsView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private refreshSizeInfo()V
    .locals 12

    .prologue
    .line 1499
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 1501
    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastTotalSize:J

    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCacheSize:J

    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastDataSize:J

    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 1502
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHaveSizes:Z

    if-nez v0, :cond_1

    .line 1503
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 1504
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 1505
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 1506
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 1512
    :cond_1
    const/16 v1, 0x68

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 1513
    const/16 v1, 0x6a

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 1602
    :goto_0
    return-void

    .line 1518
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHaveSizes:Z

    .line 1519
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->codeSize:J

    .line 1520
    .local v8, codeSize:J
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v10, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->dataSize:J

    .line 1544
    .local v10, dataSize:J
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->supportMoveAppOptions()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1545
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    add-long/2addr v8, v0

    .line 1546
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    add-long/2addr v10, v0

    .line 1563
    :cond_3
    :goto_1
    iget-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCodeSize:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_4

    .line 1564
    iput-wide v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 1565
    const/4 v1, 0x4

    invoke-direct {p0, v8, v9}, Lcom/android/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 1568
    :cond_4
    iget-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastDataSize:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_5

    .line 1569
    iput-wide v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastDataSize:J

    .line 1570
    const/4 v1, 0x5

    invoke-direct {p0, v10, v11}, Lcom/android/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 1573
    :cond_5
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->cacheSize:J

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalCacheSize:J

    add-long v6, v0, v2

    .line 1574
    .local v6, cacheSize:J
    iget-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCacheSize:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_6

    .line 1575
    iput-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCacheSize:J

    .line 1576
    const/4 v1, 0x6

    invoke-direct {p0, v6, v7}, Lcom/android/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 1579
    :cond_6
    iget-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastTotalSize:J

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    .line 1580
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastTotalSize:J

    .line 1581
    const/4 v1, 0x7

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v2, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    invoke-direct {p0, v2, v3}, Lcom/android/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 1585
    :cond_7
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->dataSize:J

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCanClearData:Z

    if-nez v0, :cond_b

    .line 1586
    :cond_8
    const/16 v1, 0x68

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 1593
    :goto_2
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-gtz v0, :cond_c

    .line 1594
    const/16 v1, 0x6a

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 1548
    .end local v6           #cacheSize:J
    :cond_9
    iget-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    .line 1549
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    .line 1550
    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v2, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    invoke-direct {p0, v2, v3}, Lcom/android/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 1554
    :cond_a
    iget-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastExternalDataSize:J

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 1555
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastExternalDataSize:J

    .line 1556
    const/16 v1, 0x9

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v2, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    invoke-direct {p0, v2, v3}, Lcom/android/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    goto/16 :goto_1

    .line 1589
    .restart local v6       #cacheSize:J
    :cond_b
    const/16 v1, 0x68

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    goto :goto_2

    .line 1597
    :cond_c
    const/16 v1, 0x6a

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    goto/16 :goto_0
.end method

.method private refreshTextView(ILjava/lang/String;Ljava/lang/Integer;)V
    .locals 4
    .parameter "widgetId"
    .parameter "text"
    .parameter "visibility"

    .prologue
    .line 2956
    const/4 v0, 0x0

    .line 2958
    .local v0, view:Lcom/htc/widget/HtcListItem2LineStamp;
    packed-switch p1, :pswitch_data_0

    .line 3021
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid widgetId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/applications/InstalledAppDetails;->Log(Ljava/lang/String;)V

    .line 3036
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 2960
    .restart local p2
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAutoLaunchView:Lcom/htc/widget/HtcListItemLabeledLayout;

    if-eqz v1, :cond_0

    .line 2964
    if-eqz p2, :cond_0

    .line 2965
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAutoLaunchView:Lcom/htc/widget/HtcListItemLabeledLayout;

    invoke-virtual {v1, p2}, Lcom/htc/widget/HtcListItemLabeledLayout;->setLabelText(Ljava/lang/String;)V

    goto :goto_0

    .line 2969
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppText:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v1, :cond_0

    .line 2973
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppText:Lcom/htc/widget/HtcListItem2LineText;

    if-nez p2, :cond_1

    const-string p2, ""

    .end local p2
    :cond_1
    invoke-virtual {v1, p2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 2974
    if-eqz p3, :cond_0

    .line 2975
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextVisibility(I)V

    goto :goto_0

    .line 2979
    .restart local p2
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppText:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v1, :cond_0

    .line 2983
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppText:Lcom/htc/widget/HtcListItem2LineText;

    if-nez p2, :cond_2

    const-string p2, ""

    .end local p2
    :cond_2
    invoke-virtual {v1, p2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 2984
    if-eqz p3, :cond_0

    .line 2985
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    goto :goto_0

    .line 2989
    .restart local p2
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppSize:Lcom/htc/widget/HtcListItem2LineStamp;

    .line 3025
    :goto_1
    if-eqz v0, :cond_0

    .line 3029
    if-eqz p2, :cond_3

    .line 3030
    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryText(Ljava/lang/String;)V

    .line 3033
    :cond_3
    if-eqz p3, :cond_0

    .line 3034
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryTextVisibility(I)V

    goto :goto_0

    .line 2992
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataSize:Lcom/htc/widget/HtcListItem2LineStamp;

    .line 2993
    goto :goto_1

    .line 2995
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCacheSize:Lcom/htc/widget/HtcListItem2LineStamp;

    .line 2996
    goto :goto_1

    .line 2998
    :pswitch_6
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mTotalSize:Lcom/htc/widget/HtcListItem2LineStamp;

    .line 2999
    goto :goto_1

    .line 3001
    :pswitch_7
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mExternalCodeSize:Lcom/htc/widget/HtcListItem2LineStamp;

    .line 3002
    goto :goto_1

    .line 3004
    :pswitch_8
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mExternalDataSize:Lcom/htc/widget/HtcListItem2LineStamp;

    .line 3005
    goto :goto_1

    .line 3007
    :pswitch_9
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAutoLaunchTitleView:Lcom/htc/widget/HtcListItemSeparator;

    if-eqz v1, :cond_0

    .line 3010
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAutoLaunchTitleView:Lcom/htc/widget/HtcListItemSeparator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Lcom/htc/widget/HtcListItemSeparator;->setText(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 3013
    :pswitch_a
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSecuritySettingsDescText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 3016
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSecuritySettingsDescText:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3017
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSecuritySettingsDescText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getInternalActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x203006e

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 2958
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private refreshUiForUninstallInBackground()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1166
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-eqz v2, :cond_2

    .line 1168
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v4, 0x200

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1169
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    sget-boolean v2, Lcom/android/settings/applications/InstalledAppDetails;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1170
    const-string v2, "Settings:InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshUiForUninstallInBAckground, pkcName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", info.enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    :cond_0
    iget-boolean v2, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v2, :cond_1

    .line 1176
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/settings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1190
    .end local v1           #info:Landroid/content/pm/ApplicationInfo;
    :cond_1
    :goto_0
    return-void

    .line 1179
    :catch_0
    move-exception v0

    .line 1180
    .local v0, e:Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/settings/applications/InstalledAppDetails;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 1181
    const-string v2, "Settings:InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshUiForUninstallInBAckground, exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshUiInBackground()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1188
    invoke-direct {p0, v5, v5}, Lcom/android/settings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    goto :goto_0
.end method

.method private refreshUiInBackground()Z
    .locals 35

    .prologue
    .line 1193
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveInProgress:Z

    if-eqz v3, :cond_0

    .line 1194
    const/4 v3, 0x1

    .line 1436
    :goto_0
    return v3

    .line 1197
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->retrieveAppEntry()Ljava/lang/String;

    move-result-object v25

    .line 1199
    .local v25, packageName:Ljava/lang/String;
    if-nez v25, :cond_1

    .line 1200
    const/4 v3, 0x0

    goto :goto_0

    .line 1203
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/android/settings/applications/ApplicationsState;->getEntry(Ljava/lang/String;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 1205
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-nez v3, :cond_2

    .line 1206
    const/4 v3, 0x0

    goto :goto_0

    .line 1218
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getInternalActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Lcom/android/settings/applications/HtcPackageBlocker;->isInBlockedSet(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1221
    const/4 v3, 0x0

    goto :goto_0

    .line 1227
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v5, 0x2240

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1236
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v3, :cond_4

    .line 1237
    const/4 v3, 0x0

    goto :goto_0

    .line 1231
    :catch_0
    move-exception v19

    .line 1232
    .local v19, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Settings:InstalledAppDetails"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception when retrieving package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1233
    const/4 v3, 0x0

    goto :goto_0

    .line 1241
    .end local v19           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 1244
    .local v29, prefActList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1245
    .local v23, intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move-object/from16 v2, v25

    invoke-virtual {v3, v0, v1, v2}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 1248
    const/16 v21, 0x0

    .line 1250
    .local v21, hasUsbDefaults:Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    move-object/from16 v0, v25

    invoke-interface {v3, v0, v4}, Landroid/hardware/usb/IUsbManager;->hasDefaults(Ljava/lang/String;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v21

    .line 1254
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v20

    .line 1259
    .local v20, hasBindAppWidgetPermission:Z
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_5

    if-eqz v21, :cond_9

    :cond_5
    const/16 v16, 0x1

    .line 1260
    .local v16, autoLaunchEnabled:Z
    :goto_2
    if-nez v16, :cond_a

    if-nez v20, :cond_a

    .line 1261
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAutoLaunchTitleView:Lcom/htc/widget/HtcListItemSeparator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAutoLaunchView:Lcom/htc/widget/HtcListItemLabeledLayout;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/settings/applications/InstalledAppDetails;->resetLaunchDefaultsUi(Landroid/view/View;Landroid/view/View;)V

    .line 1313
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getInternalActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ActivityManager;

    .line 1315
    .local v12, am:Landroid/app/ActivityManager;
    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/app/ActivityManager;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v18

    .line 1327
    .local v18, compatMode:I
    const/16 v4, 0xcb

    const/4 v5, 0x0

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 1332
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v30

    .line 1336
    .local v30, premiumSmsPermission:I
    new-instance v3, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getInternalActivity()Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-direct {v3, v4, v0}, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAsp:Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;

    .line 1337
    const/4 v14, 0x0

    .line 1338
    .local v14, aspView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAsp:Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;

    invoke-virtual {v3}, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->getPermissionCount()I

    move-result v3

    if-gtz v3, :cond_6

    if-eqz v30, :cond_7

    .line 1340
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAsp:Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;

    invoke-virtual {v3}, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->getPermissionsView()Landroid/view/View;

    move-result-object v14

    .line 1342
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getUiHandler()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x9

    invoke-static {v3, v4, v14}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1356
    const/16 v24, 0x0

    .line 1357
    .local v24, nShowSmsPermission:I
    if-eqz v30, :cond_8

    .line 1358
    const/16 v24, 0x1

    .line 1360
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getUiHandler()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xc

    move/from16 v0, v24

    move/from16 v1, v30

    move-object/from16 v2, v25

    invoke-static {v3, v4, v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1365
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v26

    .line 1366
    .local v26, packages:[Ljava/lang/String;
    if-eqz v26, :cond_17

    move-object/from16 v0, v26

    array-length v3, v0

    const/4 v4, 0x1

    if-le v3, v4, :cond_17

    .line 1367
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 1368
    .local v28, pnames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/16 v22, 0x0

    .local v22, i:I
    :goto_4
    move-object/from16 v0, v26

    array-length v3, v0

    move/from16 v0, v22

    if-ge v0, v3, :cond_16

    .line 1369
    aget-object v27, v26, v22

    .line 1370
    .local v27, pkg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1368
    :goto_5
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 1251
    .end local v12           #am:Landroid/app/ActivityManager;
    .end local v14           #aspView:Landroid/view/View;
    .end local v16           #autoLaunchEnabled:Z
    .end local v18           #compatMode:I
    .end local v20           #hasBindAppWidgetPermission:Z
    .end local v22           #i:I
    .end local v24           #nShowSmsPermission:I
    .end local v26           #packages:[Ljava/lang/String;
    .end local v27           #pkg:Ljava/lang/String;
    .end local v28           #pnames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v30           #premiumSmsPermission:I
    :catch_1
    move-exception v19

    .line 1252
    .local v19, e:Landroid/os/RemoteException;
    const-string v3, "Settings:InstalledAppDetails"

    const-string v4, "mUsbManager.hasDefaults"

    move-object/from16 v0, v19

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1259
    .end local v19           #e:Landroid/os/RemoteException;
    .restart local v20       #hasBindAppWidgetPermission:Z
    :cond_9
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 1263
    .restart local v16       #autoLaunchEnabled:Z
    :cond_a
    if-eqz v20, :cond_c

    if-eqz v16, :cond_c

    const/16 v34, 0x1

    .line 1265
    .local v34, useBullets:Z
    :goto_6
    if-eqz v20, :cond_d

    .line 1267
    const/16 v4, 0xa

    const v3, 0x7f0c0f56

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 1275
    :goto_7
    const/16 v33, 0x0

    .line 1278
    .local v33, text:Ljava/lang/CharSequence;
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_b

    .line 1279
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "this.isAdded(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->isAdded()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/applications/InstalledAppDetails;->Log(Ljava/lang/String;)V

    .line 1281
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->isAdded()Z

    move-result v3

    if-nez v3, :cond_e

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1263
    .end local v33           #text:Ljava/lang/CharSequence;
    .end local v34           #useBullets:Z
    :cond_c
    const/16 v34, 0x0

    goto :goto_6

    .line 1271
    .restart local v34       #useBullets:Z
    :cond_d
    const/16 v4, 0xa

    const v3, 0x7f0c0f55

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    goto :goto_7

    .line 1283
    .restart local v33       #text:Ljava/lang/CharSequence;
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 1285
    .local v17, bulletIndent:I
    if-eqz v16, :cond_10

    .line 1286
    const v3, 0x7f0c0f6a

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/applications/InstalledAppDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    .line 1287
    .local v15, autoLaunchEnableText:Ljava/lang/CharSequence;
    new-instance v32, Landroid/text/SpannableString;

    move-object/from16 v0, v32

    invoke-direct {v0, v15}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1288
    .local v32, s:Landroid/text/SpannableString;
    if-eqz v34, :cond_f

    .line 1289
    new-instance v3, Landroid/text/style/BulletSpan;

    move/from16 v0, v17

    invoke-direct {v3, v0}, Landroid/text/style/BulletSpan;-><init>(I)V

    const/4 v4, 0x0

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1291
    :cond_f
    if-nez v33, :cond_13

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    aput-object v32, v3, v4

    const/4 v4, 0x1

    const-string v5, "\n"

    aput-object v5, v3, v4

    invoke-static {v3}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v33

    .line 1294
    .end local v15           #autoLaunchEnableText:Ljava/lang/CharSequence;
    .end local v32           #s:Landroid/text/SpannableString;
    :cond_10
    :goto_8
    if-eqz v20, :cond_12

    .line 1295
    const v3, 0x7f0c0f6b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/applications/InstalledAppDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 1297
    .local v11, alwaysAllowBindAppWidgetsText:Ljava/lang/CharSequence;
    new-instance v32, Landroid/text/SpannableString;

    move-object/from16 v0, v32

    invoke-direct {v0, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1298
    .restart local v32       #s:Landroid/text/SpannableString;
    if-eqz v34, :cond_11

    .line 1299
    new-instance v3, Landroid/text/style/BulletSpan;

    move/from16 v0, v17

    invoke-direct {v3, v0}, Landroid/text/style/BulletSpan;-><init>(I)V

    const/4 v4, 0x0

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1302
    :cond_11
    if-nez v33, :cond_14

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    aput-object v32, v3, v4

    const/4 v4, 0x1

    const-string v5, "\n"

    aput-object v5, v3, v4

    invoke-static {v3}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v33

    .line 1305
    .end local v11           #alwaysAllowBindAppWidgetsText:Ljava/lang/CharSequence;
    .end local v32           #s:Landroid/text/SpannableString;
    :cond_12
    :goto_9
    const/4 v4, 0x1

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 1307
    const/16 v4, 0x65

    const/4 v5, 0x0

    check-cast v5, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    goto/16 :goto_3

    .line 1291
    .restart local v15       #autoLaunchEnableText:Ljava/lang/CharSequence;
    .restart local v32       #s:Landroid/text/SpannableString;
    :cond_13
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    aput-object v33, v3, v4

    const/4 v4, 0x1

    const-string v5, "\n"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v32, v3, v4

    const/4 v4, 0x3

    const-string v5, "\n"

    aput-object v5, v3, v4

    invoke-static {v3}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v33

    goto :goto_8

    .line 1302
    .end local v15           #autoLaunchEnableText:Ljava/lang/CharSequence;
    .restart local v11       #alwaysAllowBindAppWidgetsText:Ljava/lang/CharSequence;
    :cond_14
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    aput-object v33, v3, v4

    const/4 v4, 0x1

    const-string v5, "\n"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v32, v3, v4

    const/4 v4, 0x3

    const-string v5, "\n"

    aput-object v5, v3, v4

    invoke-static {v3}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v33

    goto :goto_9

    .line 1374
    .end local v11           #alwaysAllowBindAppWidgetsText:Ljava/lang/CharSequence;
    .end local v17           #bulletIndent:I
    .end local v32           #s:Landroid/text/SpannableString;
    .end local v33           #text:Ljava/lang/CharSequence;
    .end local v34           #useBullets:Z
    .restart local v12       #am:Landroid/app/ActivityManager;
    .restart local v14       #aspView:Landroid/view/View;
    .restart local v18       #compatMode:I
    .restart local v22       #i:I
    .restart local v24       #nShowSmsPermission:I
    .restart local v26       #packages:[Ljava/lang/String;
    .restart local v27       #pkg:Ljava/lang/String;
    .restart local v28       #pnames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v30       #premiumSmsPermission:I
    :cond_15
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    .line 1375
    .local v10, ainfo:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_5

    .line 1376
    .end local v10           #ainfo:Landroid/content/pm/ApplicationInfo;
    :catch_2
    move-exception v3

    goto/16 :goto_5

    .line 1379
    .end local v27           #pkg:Ljava/lang/String;
    :cond_16
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1380
    .local v9, N:I
    if-lez v9, :cond_17

    .line 1381
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getInternalActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    .line 1383
    .local v31, res:Landroid/content/res/Resources;
    const/4 v3, 0x1

    if-ne v9, v3, :cond_19

    .line 1384
    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1401
    .local v13, appListStr:Ljava/lang/String;
    :goto_a
    const/16 v4, 0xb

    const v3, 0x7f0c0f94

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v13, v5, v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 1409
    .end local v9           #N:I
    .end local v13           #appListStr:Ljava/lang/String;
    .end local v22           #i:I
    .end local v28           #pnames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v31           #res:Landroid/content/res/Resources;
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->checkForceStop()V

    .line 1410
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings/applications/InstalledAppDetails;->setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V

    .line 1411
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshButtons()V

    .line 1412
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshSizeInfo()V

    .line 1414
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/applications/InstalledAppDetails;->mInitialized:Z

    if-nez v3, :cond_1e

    .line 1416
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/applications/InstalledAppDetails;->mInitialized:Z

    .line 1417
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x80

    and-int/2addr v3, v4

    if-nez v3, :cond_1d

    const/4 v3, 0x1

    :goto_b
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/applications/InstalledAppDetails;->mShowUninstalled:Z

    .line 1436
    :cond_18
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1385
    .restart local v9       #N:I
    .restart local v22       #i:I
    .restart local v28       #pnames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v31       #res:Landroid/content/res/Resources;
    :cond_19
    const/4 v3, 0x2

    if-ne v9, v3, :cond_1a

    .line 1386
    const v3, 0x7f0c0f95

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #appListStr:Ljava/lang/String;
    goto :goto_a

    .line 1389
    .end local v13           #appListStr:Ljava/lang/String;
    :cond_1a
    add-int/lit8 v3, v9, -0x2

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1390
    .restart local v13       #appListStr:Ljava/lang/String;
    add-int/lit8 v22, v9, -0x3

    :goto_c
    if-ltz v22, :cond_1c

    .line 1391
    if-nez v22, :cond_1b

    const v3, 0x7f0c0f97

    :goto_d
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v13, v4, v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 1390
    add-int/lit8 v22, v22, -0x1

    goto :goto_c

    .line 1391
    :cond_1b
    const v3, 0x7f0c0f98

    goto :goto_d

    .line 1394
    :cond_1c
    const v3, 0x7f0c0f96

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v13, v4, v5

    const/4 v5, 0x1

    add-int/lit8 v6, v9, -0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_a

    .line 1417
    .end local v9           #N:I
    .end local v13           #appListStr:Ljava/lang/String;
    .end local v22           #i:I
    .end local v28           #pnames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v31           #res:Landroid/content/res/Resources;
    :cond_1d
    const/4 v3, 0x0

    goto :goto_b

    .line 1422
    :cond_1e
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getInternalActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v5, 0x2200

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    .line 1425
    .restart local v10       #ainfo:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/applications/InstalledAppDetails;->mShowUninstalled:Z

    if-nez v3, :cond_18

    .line 1429
    iget v3, v10, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    const/high16 v4, 0x80

    and-int/2addr v3, v4

    if-eqz v3, :cond_1f

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_1f
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1431
    .end local v10           #ainfo:Landroid/content/pm/ApplicationInfo;
    :catch_3
    move-exception v19

    .line 1432
    .local v19, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method private resetLaunchDefaultsUi(Landroid/view/View;Landroid/view/View;)V
    .locals 10
    .parameter "title"
    .parameter "autoLaunchView"

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 1481
    const/16 v1, 0xa

    const v0, 0x7f0c0f55

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 1484
    const v0, 0x7f0c0f6c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, p0

    move v1, v7

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 1487
    const/16 v5, 0x65

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object v4, p0

    move-object v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 1488
    return-void
.end method

.method private retrieveAppEntry()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1146
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 1147
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string v3, "package"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1148
    .local v2, packageName:Ljava/lang/String;
    :goto_0
    if-nez v2, :cond_0

    .line 1149
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getInternalActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1151
    .local v1, intent:Landroid/content/Intent;
    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1152
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 1156
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-object v2

    .line 1147
    .end local v2           #packageName:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1149
    .restart local v2       #packageName:Ljava/lang/String;
    :cond_2
    const-string v3, "intent"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    move-object v1, v3

    goto :goto_1
.end method

.method private setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V
    .locals 12
    .parameter "pkgInfo"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 1027
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationsState;->ensureIcon(Lcom/android/settings/applications/ApplicationsState$AppEntry;)V

    .line 1028
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1032
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 1038
    if-eqz p1, :cond_3

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1039
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1041
    .local v9, version:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->htcsdkVer:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1042
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 1043
    const-string v0, "Settings:InstalledAppDetails"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    :cond_0
    const-string v0, "\\."

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1046
    .local v8, segments:[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1047
    .local v6, builder:Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .local v7, index:I
    :goto_0
    array-length v0, v8

    if-ge v7, v0, :cond_1

    .line 1048
    packed-switch v7, :pswitch_data_0

    .line 1047
    :goto_1
    :pswitch_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1050
    :pswitch_1
    aget-object v0, v8, v7

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1054
    :pswitch_2
    const-string v0, "."

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v8, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1060
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1061
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_2

    .line 1062
    const-string v0, "Settings:InstalledAppDetails"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reformat version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    .end local v6           #builder:Ljava/lang/StringBuilder;
    .end local v7           #index:I
    .end local v8           #segments:[Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0f9e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v9, v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v0, p0

    move v1, v11

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 1077
    .end local v9           #version:Ljava/lang/String;
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1078
    return-void

    :cond_3
    move-object v2, v3

    .line 1072
    check-cast v2, Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v0, p0

    move v1, v11

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    goto :goto_2

    .line 1048
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setForceStopPanelDividerVisible(Z)V
    .locals 2
    .parameter "bShow"

    .prologue
    .line 3040
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopPanelDivider:Landroid/view/View;

    if-nez v0, :cond_0

    .line 3046
    :goto_0
    return-void

    .line 3044
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopPanelDivider:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method private setHWAccEnabled(Z)V
    .locals 4
    .parameter "flag"

    .prologue
    .line 882
    :try_start_0
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_0

    .line 883
    const-string v1, "Settings:InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHWAccEnabled, name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->setApplicationHWAccEnabledSetting(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 894
    :cond_1
    :goto_0
    return-void

    .line 889
    :catch_0
    move-exception v0

    .line 890
    .local v0, e:Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_1

    .line 891
    const-string v1, "Settings:InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHWAccEnabled, exception, e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setIntentAndFinish(ZZ)V
    .locals 3
    .parameter "finish"
    .parameter "appChanged"

    .prologue
    .line 1492
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1493
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "chg"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1494
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getInternalActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceActivity;

    .line 1495
    .local v1, pa:Lcom/htc/preference/HtcPreferenceActivity;
    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2, v0}, Lcom/htc/preference/HtcPreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 1496
    return-void
.end method

.method private setLoadingVisibility(I)Z
    .locals 2
    .parameter "visibility"

    .prologue
    .line 1015
    const/4 v0, 0x0

    .line 1016
    .local v0, isSuccess:Z
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v1, :cond_0

    .line 1017
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v1, p1}, Lcom/htc/widget/ActionBarContainer;->setProgressVisibility(I)V

    .line 1018
    const/4 v0, 0x1

    .line 1020
    :cond_0
    return v0
.end method

.method private setNotificationsEnabled(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    .line 2196
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-nez v3, :cond_1

    .line 2197
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_0

    .line 2198
    const-string v3, "Settings:InstalledAppDetails"

    const-string v4, "setNotificationsEnabled, mAppEntry is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2214
    :cond_0
    :goto_0
    return-void

    .line 2204
    :cond_1
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2205
    .local v2, packageName:Ljava/lang/String;
    const-string v3, "notification"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 2208
    .local v1, nm:Landroid/app/INotificationManager;
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v1, v2, v3, p1}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2209
    :catch_0
    move-exception v0

    .line 2210
    .local v0, ex:Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitch:Lcom/htc/widget/HtcCheckBox;

    if-eqz v3, :cond_0

    .line 2211
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitch:Lcom/htc/widget/HtcCheckBox;

    if-nez p1, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private setWidget(ILjava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 6
    .parameter "widgetId"
    .parameter "textId"
    .parameter "enabled"
    .parameter "visibility"
    .parameter "setListener"

    .prologue
    .line 3179
    if-eqz p2, :cond_0

    .line 3180
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 3184
    :goto_0
    return-void

    .line 3182
    :cond_0
    const/4 v2, 0x0

    check-cast v2, Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private setWidget(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 3
    .parameter "widgetId"
    .parameter "text"
    .parameter "enabled"
    .parameter "visibility"
    .parameter "setListener"

    .prologue
    .line 3165
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/applications/InstalledAppDetails;->createWidgetBundle(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)Landroid/os/Bundle;

    move-result-object v0

    .line 3168
    .local v0, bundle:Landroid/os/Bundle;
    const/16 v1, 0xc8

    if-le p1, v1, :cond_0

    .line 3169
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getUiHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3175
    :goto_0
    return-void

    .line 3170
    :cond_0
    const/16 v1, 0x64

    if-le p1, v1, :cond_1

    .line 3171
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getUiHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 3173
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getUiHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private showDialogInner(II)V
    .locals 6
    .parameter "id"
    .parameter "moveErrorCode"

    .prologue
    .line 1682
    sget-boolean v3, Lcom/android/settings/applications/InstalledAppDetails;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 1683
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1684
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1686
    .local v0, activity:Landroid/app/Activity;
    const-string v3, "\n - isResumed(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->isResumed()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n - isVisible(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->isVisible()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n - isRemoving(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->isRemoving()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n - isDetached(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->isDetached()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1692
    if-eqz v0, :cond_0

    .line 1693
    const-string v3, "\n - getActivity().isFinishing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1696
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/applications/InstalledAppDetails;->Log(Ljava/lang/String;)V

    .line 1698
    .end local v0           #activity:Landroid/app/Activity;
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->isResumed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1699
    sget-boolean v3, Lcom/android/settings/applications/InstalledAppDetails;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 1700
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignore showDialogInner("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ");"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/applications/InstalledAppDetails;->Log(Ljava/lang/String;)V

    .line 1710
    :cond_2
    :goto_0
    return-void

    .line 1707
    :cond_3
    invoke-static {p1, p2}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->newInstance(II)Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;

    move-result-object v1

    .line 1708
    .local v1, newFragment:Landroid/app/DialogFragment;
    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1709
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dialog "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private uninstallPkg(Ljava/lang/String;ZZ)V
    .locals 5
    .parameter "packageName"
    .parameter "allUsers"
    .parameter "andDisable"

    .prologue
    const/4 v4, 0x1

    .line 2043
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2044
    .local v0, packageURI:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2045
    .local v1, uninstallIntent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2048
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_0

    .line 2049
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uninstallPkg("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/applications/InstalledAppDetails;->Log(Ljava/lang/String;)V

    .line 2053
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getInternalActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/settings/applications/HtcPackageBlocker;->isInBlockedSet(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2054
    const-string v2, "uninstallIntent:"

    invoke-static {v2}, Lcom/android/settings/applications/InstalledAppDetails;->Log(Ljava/lang/String;)V

    .line 2055
    const-string v2, "\t EXTRA_PACKAGE_BLOCKED: true"

    invoke-static {v2}, Lcom/android/settings/applications/InstalledAppDetails;->Log(Ljava/lang/String;)V

    .line 2056
    const-string v2, "android.intent.extra.PACKAGE_BLOCKED"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2062
    :cond_1
    invoke-virtual {p0, v1, v4}, Lcom/android/settings/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2063
    iput-boolean p3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    .line 2064
    return-void
.end method

.method private updateForceStopButton(Z)V
    .locals 7
    .parameter "enabled"

    .prologue
    .line 2104
    const/4 v6, 0x0

    .line 2110
    .local v6, visibility:I
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-nez v0, :cond_1

    .line 2111
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 2112
    const-string v0, "Settings:InstalledAppDetails"

    const-string v1, "[updateForceStopButton()] mAppEntry is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    :cond_0
    :goto_0
    return-void

    .line 2120
    :cond_1
    sget v0, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredExtFlag;->FORCE_STOP_BUTTON_DISABLE:I

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->configuredExtFlag:I

    and-int/2addr v0, v1

    sget v1, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredExtFlag;->FORCE_STOP_BUTTON_DISABLE:I

    if-ne v0, v1, :cond_2

    .line 2123
    const/4 p1, 0x0

    .line 2124
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_2

    .line 2125
    const-string v0, "Settings:InstalledAppDetails"

    const-string v1, "[updateForceStopButton()] configuredExtFlag: FORCE_STOP_BUTTON_DISABLE"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    :cond_2
    sget v0, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredExtFlag;->FORCE_STOP_BUTTON_GONE:I

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->configuredExtFlag:I

    and-int/2addr v0, v1

    sget v1, Lcom/android/settings/framework/content/pm/HtcApplicationInfo$ConfiguredExtFlag;->FORCE_STOP_BUTTON_GONE:I

    if-ne v0, v1, :cond_3

    .line 2132
    const/16 v6, 0x8

    .line 2133
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_3

    .line 2134
    const-string v0, "Settings:InstalledAppDetails"

    const-string v1, "[updateForceStopButton()] configuredExtFlag: FORCE_STOP_BUTTON_GONE"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    :cond_3
    const/16 v1, 0x66

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/InstalledAppDetails;->setWidget(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    goto :goto_0
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3190
    const-class v0, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    .prologue
    .line 3195
    const v0, 0x7f0c0f49

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 997
    invoke-super {p0, p1}, Lcom/android/settings/framework/activity/application/HtcAbsInstalledAppDetails;->onActivityCreated(Landroid/os/Bundle;)V

    .line 998
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->initActionBar()V

    .line 999
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 975
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/framework/activity/application/HtcAbsInstalledAppDetails;->onActivityResult(IILandroid/content/Intent;)V

    .line 976
    if-ne p1, v1, :cond_1

    .line 977
    iget-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    if-eqz v1, :cond_0

    .line 978
    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    .line 980
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x2200

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 983
    .local v0, ainfo:Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_0

    .line 984
    new-instance v2, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v1, v3}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 991
    .end local v0           #ainfo:Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getNonUiHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 993
    :cond_1
    return-void

    .line 988
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onAllSizesComputed()V
    .locals 0

    .prologue
    .line 1112
    return-void
.end method

.method public onCheckedChanged(Lcom/htc/widget/HtcCompoundButton;Z)V
    .locals 6
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2426
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2427
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getInternalActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2429
    .local v0, am:Landroid/app/ActivityManager;
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAskCompatibilityCB:Lcom/htc/widget/HtcCheckBox;

    if-ne p1, v4, :cond_1

    .line 2430
    invoke-virtual {v0, v1, p2}, Landroid/app/ActivityManager;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 2441
    :cond_0
    :goto_0
    return-void

    .line 2431
    :cond_1
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mEnableCompatibilityCB:Lcom/htc/widget/HtcCheckBox;

    if-ne p1, v4, :cond_3

    .line 2432
    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    .line 2434
    :cond_3
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitch:Lcom/htc/widget/HtcCheckBox;

    if-ne p1, v4, :cond_0

    .line 2435
    if-nez p2, :cond_4

    .line 2436
    const/16 v2, 0x8

    invoke-direct {p0, v2, v3}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 2438
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->setNotificationsEnabled(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 2233
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_0

    .line 2234
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onClick(): mAppEntry: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/applications/InstalledAppDetails;->Log(Ljava/lang/String;)V

    .line 2237
    :cond_0
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-nez v6, :cond_2

    .line 2238
    const-string v5, "Settings:InstalledAppDetails"

    const-string v6, "mAppEntry got an null pointer!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2393
    :cond_1
    :goto_0
    return-void

    .line 2243
    :cond_2
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2245
    .local v4, packageName:Ljava/lang/String;
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_3

    .line 2246
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onClick: packageName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/applications/InstalledAppDetails;->Log(Ljava/lang/String;)V

    .line 2249
    :cond_3
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    if-ne p1, v6, :cond_6

    .line 2250
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_4

    .line 2251
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onClick: mUninstallButton: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/applications/InstalledAppDetails;->Log(Ljava/lang/String;)V

    .line 2254
    :cond_4
    iget-boolean v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v6, :cond_5

    .line 2255
    invoke-direct {p0, v5, v8}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 2257
    :cond_5
    invoke-direct {p0, v4, v8, v8}, Lcom/android/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 2259
    :cond_6
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDisableButton:Landroid/widget/Button;

    if-ne p1, v6, :cond_9

    .line 2260
    sget-boolean v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v5, :cond_7

    .line 2261
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onClick: mDisableButton: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDisableButton:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/applications/InstalledAppDetails;->Log(Ljava/lang/String;)V

    .line 2264
    :cond_7
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v5, :cond_8

    .line 2265
    const/4 v5, 0x7

    invoke-direct {p0, v5, v8}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 2267
    :cond_8
    new-instance v6, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v6, p0, v5, v8}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    new-array v7, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    check-cast v5, Ljava/lang/Object;

    aput-object v5, v7, v8

    invoke-virtual {v6, v7}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 2271
    :cond_9
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    if-ne p1, v6, :cond_b

    .line 2272
    sget-boolean v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v5, :cond_a

    .line 2273
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onClick("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): mActivitiesButton"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/applications/InstalledAppDetails;->Log(Ljava/lang/String;)V

    .line 2276
    :cond_a
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 2316
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-interface {v5, v4, v6}, Landroid/hardware/usb/IUsbManager;->clearDefaults(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2320
    :goto_1
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v5, v4, v8}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    .line 2324
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAutoLaunchTitleView:Lcom/htc/widget/HtcListItemSeparator;

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAutoLaunchView:Lcom/htc/widget/HtcListItemLabeledLayout;

    invoke-direct {p0, v5, v6}, Lcom/android/settings/applications/InstalledAppDetails;->resetLaunchDefaultsUi(Landroid/view/View;Landroid/view/View;)V

    goto/16 :goto_0

    .line 2317
    :catch_0
    move-exception v0

    .line 2318
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "Settings:InstalledAppDetails"

    const-string v6, "mUsbManager.clearDefaults"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2325
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_b
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    if-ne p1, v6, :cond_e

    .line 2326
    sget-boolean v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v5, :cond_c

    .line 2327
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onClick("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): mClearDataButton"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/applications/InstalledAppDetails;->Log(Ljava/lang/String;)V

    .line 2328
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getInternalActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onClick("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    invoke-static {v5, v6, v7}, Lcom/android/settings/applications/InstalledAppDetails;->dumpLog(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/applications/ApplicationsState$AppEntry;)V

    .line 2331
    :cond_c
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v5, :cond_d

    .line 2332
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2340
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2341
    .local v1, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2343
    const/4 v5, 0x2

    invoke-virtual {p0, v1, v5}, Lcom/android/settings/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 2344
    .end local v1           #intent:Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 2345
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "Settings:InstalledAppDetails"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2346
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 2352
    .end local v0           #e:Ljava/lang/Exception;
    :cond_d
    invoke-direct {p0, v3, v8}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto/16 :goto_0

    .line 2354
    :cond_e
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    if-ne p1, v6, :cond_11

    .line 2355
    sget-boolean v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v5, :cond_f

    .line 2356
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onClick("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): mClearCacheButton"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/applications/InstalledAppDetails;->Log(Ljava/lang/String;)V

    .line 2360
    :cond_f
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

    if-nez v5, :cond_10

    .line 2361
    new-instance v5, Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-direct {v5, p0}, Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

    .line 2363
    :cond_10
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    goto/16 :goto_0

    .line 2364
    :cond_11
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    if-ne p1, v6, :cond_13

    .line 2365
    sget-boolean v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v5, :cond_12

    .line 2366
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onClick("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): mForceStopButton"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/applications/InstalledAppDetails;->Log(Ljava/lang/String;)V

    .line 2369
    :cond_12
    const/4 v5, 0x5

    invoke-direct {p0, v5, v8}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto/16 :goto_0

    .line 2371
    :cond_13
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    if-ne p1, v6, :cond_17

    .line 2372
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_14

    .line 2373
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onClick("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): mMoveAppButton"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/applications/InstalledAppDetails;->Log(Ljava/lang/String;)V

    .line 2376
    :cond_14
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

    if-nez v6, :cond_15

    .line 2377
    new-instance v6, Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

    invoke-direct {v6, p0}, Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

    .line 2379
    :cond_15
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x4

    and-int/2addr v6, v7

    if-eqz v6, :cond_16

    .line 2381
    .local v3, moveFlags:I
    :goto_2
    const/16 v5, 0xa

    invoke-direct {p0, v5, v3}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto/16 :goto_0

    .end local v3           #moveFlags:I
    :cond_16
    move v3, v5

    .line 2379
    goto :goto_2

    .line 2386
    :cond_17
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHWAccSwitch:Lcom/htc/widget/HtcCheckBox;

    if-ne p1, v5, :cond_1

    .line 2387
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHWAccSwitch:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v5}, Lcom/htc/widget/HtcCheckBox;->isChecked()Z

    move-result v2

    .line 2388
    .local v2, isChecked:Z
    sget-boolean v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v5, :cond_18

    .line 2389
    const-string v5, "Settings:InstalledAppDetails"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mHWAccSwitch, checked = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2391
    :cond_18
    invoke-direct {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->setHWAccEnabled(Z)V

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 3200
    invoke-super {p0, p1}, Lcom/android/settings/framework/activity/application/HtcAbsInstalledAppDetails;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3202
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAsp:Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;

    if-eqz v0, :cond_0

    .line 3203
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAsp:Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/widget/HtcAppSecurityPermissions;->doConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3205
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 899
    invoke-super {p0, p1}, Lcom/android/settings/framework/activity/application/HtcAbsInstalledAppDetails;->onCreate(Landroid/os/Bundle;)V

    .line 902
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->setHasOptionsMenu(Z)V

    .line 903
    return-void
.end method

.method public onCreateInBackground(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 2473
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getInternalActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settings/applications/ApplicationsState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    .line 2474
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getInternalActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    .line 2475
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getInternalActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    .line 2476
    const-string v1, "usb"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2477
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    .line 2478
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getInternalActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 2479
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getInternalActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 2480
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    .line 2482
    new-instance v1, Lcom/android/settings/applications/HtcUnsupportDisableSet;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getInternalActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/applications/HtcUnsupportDisableSet;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDisableButtonSet:Lcom/android/settings/applications/HtcUnsupportDisableSet;

    .line 2484
    new-instance v1, Lcom/android/settings/applications/CanBeOnSdCardChecker;

    invoke-direct {v1}, Lcom/android/settings/applications/CanBeOnSdCardChecker;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/settings/applications/CanBeOnSdCardChecker;

    .line 2485
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 940
    const v0, 0x7f0c0f64

    invoke-interface {p1, v1, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 942
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, -0x1

    .line 907
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->initActionBar()V

    .line 910
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mInflater:Landroid/view/LayoutInflater;

    .line 919
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mViewContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 920
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mViewContainer:Landroid/widget/FrameLayout;

    .line 924
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mViewContainer:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 927
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mViewContainer:Landroid/widget/FrameLayout;

    const v1, 0x2080001

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 930
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->setLoadingVisibility(I)Z

    .line 932
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getNonUiHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 935
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mViewContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 2448
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getUiHandler()Landroid/os/Handler;

    move-result-object v1

    .line 2449
    .local v1, uiHandler:Landroid/os/Handler;
    if-eqz v1, :cond_0

    .line 2450
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2451
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2452
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2453
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2454
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2455
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2456
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2457
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2458
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2460
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getNonUiHandler()Landroid/os/Handler;

    move-result-object v0

    .line 2461
    .local v0, nonUiHandler:Landroid/os/Handler;
    if-eqz v0, :cond_1

    .line 2462
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2463
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2464
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2465
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2467
    :cond_1
    invoke-super {p0}, Lcom/android/settings/framework/activity/application/HtcAbsInstalledAppDetails;->onDestroy()V

    .line 2468
    return-void
.end method

.method public onHandleNonUiMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2615
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 2629
    :goto_0
    return-void

    .line 2617
    :sswitch_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshUiInBackground()Z

    goto :goto_0

    .line 2620
    :sswitch_1
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshUiForUninstallInBackground()V

    goto :goto_0

    .line 2623
    :sswitch_2
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->postCreateView()V

    goto :goto_0

    .line 2626
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->postResumeInBackground()V

    goto :goto_0

    .line 2615
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method public onHandleUiMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    .line 2567
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2611
    :goto_0
    return-void

    .line 2569
    :pswitch_0
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->setLoadingVisibility(I)Z

    .line 2570
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2571
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mViewContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 2574
    :pswitch_1
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    .line 2575
    .local v6, bundle:Landroid/os/Bundle;
    const-string v0, "widget_id_field"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2576
    .local v1, buttonId:I
    const-string v0, "widget_text_field"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2577
    .local v2, text:Ljava/lang/String;
    const-string v0, "widget_enabled_field"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 2578
    .local v3, enabled:Ljava/lang/Boolean;
    const-string v0, "widget_visibility_field"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 2579
    .local v9, visibility:I
    const-string v0, "widget_set_listener_field"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 2580
    .local v5, setListener:Ljava/lang/Boolean;
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/InstalledAppDetails;->refreshButton(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 2583
    .end local v1           #buttonId:I
    .end local v2           #text:Ljava/lang/String;
    .end local v3           #enabled:Ljava/lang/Boolean;
    .end local v5           #setListener:Ljava/lang/Boolean;
    .end local v6           #bundle:Landroid/os/Bundle;
    .end local v9           #visibility:I
    :pswitch_2
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    .line 2584
    .restart local v6       #bundle:Landroid/os/Bundle;
    const-string v0, "widget_id_field"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 2585
    .local v8, viewId:I
    const-string v0, "widget_text_field"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2586
    .restart local v2       #text:Ljava/lang/String;
    const-string v0, "widget_visibility_field"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 2587
    .restart local v9       #visibility:I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v8, v2, v0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshTextView(ILjava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 2590
    .end local v2           #text:Ljava/lang/String;
    .end local v6           #bundle:Landroid/os/Bundle;
    .end local v8           #viewId:I
    .end local v9           #visibility:I
    :pswitch_3
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    .line 2591
    .restart local v6       #bundle:Landroid/os/Bundle;
    const-string v0, "widget_id_field"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 2592
    .local v7, layoutId:I
    const-string v0, "widget_visibility_field"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 2593
    .restart local v9       #visibility:I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v7, v0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshLayout(ILjava/lang/Integer;)V

    goto/16 :goto_0

    .line 2596
    .end local v6           #bundle:Landroid/os/Bundle;
    .end local v7           #layoutId:I
    .end local v9           #visibility:I
    :pswitch_4
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshAppIcon()V

    goto/16 :goto_0

    .line 2599
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshSecurityView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 2602
    :pswitch_6
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshExtraAppLabelWidget()V

    goto/16 :goto_0

    .line 2605
    :pswitch_7
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->initPrefixText()V

    goto/16 :goto_0

    .line 2608
    :pswitch_8
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v10, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v4, v10, v0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshPremiumSmsPermission(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 2567
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 965
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 966
    .local v0, menuId:I
    if-ne v0, v1, :cond_0

    .line 967
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3, v1, v2}, Lcom/android/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    .line 970
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 1116
    return-void
.end method

.method public onPackageListChanged()V
    .locals 2

    .prologue
    .line 1120
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getNonUiHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1121
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 1130
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 1131
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPackageSizeChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    invoke-static {v0, v1, v2}, Lcom/android/settings/applications/InstalledAppDetails;->dumpLog(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/applications/ApplicationsState$AppEntry;)V

    .line 1136
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1137
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshSizeInfo()V

    .line 1139
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1100
    invoke-super {p0}, Lcom/android/settings/framework/activity/application/HtcAbsInstalledAppDetails;->onPause()V

    .line 1107
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMediaActionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1108
    return-void
.end method

.method public onPauseInBackground()V
    .locals 1

    .prologue
    .line 2783
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState;->pause()V

    .line 2784
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mIsAppStateResume:Z

    .line 2785
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .parameter "menu"

    .prologue
    .line 946
    const/4 v0, 0x1

    .line 947
    .local v0, showIt:Z
    iget-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v1, :cond_1

    .line 948
    const/4 v0, 0x0

    .line 960
    :cond_0
    :goto_0
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 961
    return-void

    .line 949
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-nez v1, :cond_2

    .line 950
    const/4 v0, 0x0

    goto :goto_0

    .line 951
    :cond_2
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 952
    const/4 v0, 0x0

    goto :goto_0

    .line 953
    :cond_3
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 954
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 955
    :cond_5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_6

    .line 956
    const/4 v0, 0x0

    goto :goto_0

    .line 957
    :cond_6
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 958
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1125
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 1082
    invoke-super {p0}, Lcom/android/settings/framework/activity/application/HtcAbsInstalledAppDetails;->onResume()V

    .line 1085
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMediaActionReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/settings/applications/InstalledAppDetails;->MEDIA_INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1095
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getNonUiHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1096
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .parameter "running"

    .prologue
    .line 1143
    return-void
.end method

.method public postResumeInBackground()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2768
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/ApplicationsState;->resume(Lcom/android/settings/applications/ApplicationsState$Callbacks;)V

    .line 2770
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshUiInBackground()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2771
    invoke-direct {p0, v1, v1}, Lcom/android/settings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 2774
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mIsAppStateResume:Z

    .line 2775
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mIsViewRootReady:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mIsContentViewShowed:Z

    if-nez v0, :cond_1

    .line 2776
    iput-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mIsContentViewShowed:Z

    .line 2777
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2779
    :cond_1
    return-void
.end method
