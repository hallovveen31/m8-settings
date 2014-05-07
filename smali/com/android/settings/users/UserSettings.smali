.class public Lcom/android/settings/users/UserSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "UserSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# static fields
.field private static final DIALOG_ADD_USER:I = 0x2

.field private static final DIALOG_CONFIRM_REMOVE:I = 0x1

.field private static final DIALOG_SETUP_USER:I = 0x3

.field private static final DIALOG_USER_CANNOT_MANAGE:I = 0x4

.field private static final KEY_ADD_USER_LONG_MESSAGE_DISPLAYED:Ljava/lang/String; = "key_add_user_long_message_displayed"

.field private static final KEY_USER_LIST:Ljava/lang/String; = "user_list"

.field private static final KEY_USER_ME:Ljava/lang/String; = "user_me"

.field private static final KEY_USER_NICKNAME:Ljava/lang/String; = "user_nickname"

.field private static final MENU_ADD_USER:I = 0x1

.field private static final MENU_REMOVE_USER:I = 0x2

.field private static final MESSAGE_SETUP_USER:I = 0x2

.field private static final MESSAGE_UPDATE_LIST:I = 0x1

.field private static final SAVE_ADDING_USER:Ljava/lang/String; = "adding_user"

.field private static final SAVE_REMOVING_USER:Ljava/lang/String; = "removing_user"

.field private static final TAG:Ljava/lang/String; = "UserSettings"

.field private static final USER_DRAWABLES:[I


# instance fields
.field private mAddedUserId:I

.field private mAddingUser:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsOwner:Z

.field private mMePreference:Lcom/htc/preference/HtcPreference;

.field private mNicknamePreference:Lcom/android/settings/SelectableEditTextPreference;

.field private mProfileExists:Z

.field private mRemovingUserId:I

.field private mRootPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

.field private mUserChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mUserIcons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mUserListCategory:Lcom/htc/preference/HtcPreferenceGroup;

.field private final mUserLock:Ljava/lang/Object;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 96
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x20800d1

    aput v2, v0, v1

    sput-object v0, Lcom/android/settings/users/UserSettings;->USER_DRAWABLES:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    .line 112
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    .line 113
    iput v0, p0, Lcom/android/settings/users/UserSettings;->mAddedUserId:I

    .line 117
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    .line 119
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    .line 120
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mIsOwner:Z

    .line 123
    new-instance v0, Lcom/android/settings/users/UserSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$1;-><init>(Lcom/android/settings/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    .line 137
    new-instance v0, Lcom/android/settings/users/UserSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$2;-><init>(Lcom/android/settings/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/users/UserSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->updateUserList()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/users/UserSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->onUserCreated(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/users/UserSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->addUserNow()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/users/UserSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/settings/users/UserSettings;->mAddedUserId:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/settings/users/UserSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->switchUserNow(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/users/UserSettings;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/users/UserSettings;Landroid/content/pm/UserInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->assignDefaultPhoto(Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/settings/users/UserSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/users/UserSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/users/UserSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput p1, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/users/UserSettings;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/users/UserSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/users/UserSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->finishLoadProfile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/users/UserSettings;)Landroid/os/UserManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/users/UserSettings;Landroid/content/pm/UserInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->assignProfilePhoto(Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/users/UserSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->getProfileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/users/UserSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->removeUserNow()V

    return-void
.end method

.method private addUserNow()V
    .locals 2

    .prologue
    .line 415
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 416
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    .line 417
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->updateUserList()V

    .line 418
    new-instance v0, Lcom/android/settings/users/UserSettings$8;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$8;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-virtual {v0}, Lcom/android/settings/users/UserSettings$8;->start()V

    .line 434
    monitor-exit v1

    .line 435
    return-void

    .line 434
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private assignDefaultPhoto(Landroid/content/pm/UserInfo;)V
    .locals 5
    .parameter "user"

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/android/settings/users/UserSettings;->USER_DRAWABLES:[I

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    sget-object v4, Lcom/android/settings/users/UserSettings;->USER_DRAWABLES:[I

    array-length v4, v4

    rem-int/2addr v3, v4

    aget v2, v2, v3

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 564
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 565
    return-void
.end method

.method private assignProfilePhoto(Landroid/content/pm/UserInfo;)V
    .locals 1
    .parameter "user"

    .prologue
    .line 548
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/Utils;->copyMeProfilePhoto(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 549
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->assignDefaultPhoto(Landroid/content/pm/UserInfo;)V

    .line 551
    :cond_0
    return-void
.end method

.method private finishLoadProfile(Ljava/lang/String;)V
    .locals 4
    .parameter "profileName"

    .prologue
    .line 280
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, p1}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 281
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 282
    .local v2, myUserId:I
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v2}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 283
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 284
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 285
    .local v1, d:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 286
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 288
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method private getProfileName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 554
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->getMeProfileName(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    .line 555
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 556
    iput-boolean v2, p0, Lcom/android/settings/users/UserSettings;->mProfileExists:Z

    .line 558
    :cond_0
    return-object v0
.end method

.method private isInitialized(Landroid/content/pm/UserInfo;)Z
    .locals 1
    .parameter "user"

    .prologue
    .line 612
    iget v0, p1, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadIconsAsync(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 528
    .local p1, missingIcons:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 529
    .local v0, resources:Landroid/content/res/Resources;
    new-instance v1, Lcom/android/settings/users/UserSettings$9;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/users/UserSettings$9;-><init>(Lcom/android/settings/users/UserSettings;Landroid/content/res/Resources;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/List;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/settings/users/UserSettings$9;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 545
    return-void
.end method

.method private loadProfile()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 260
    iput-boolean v1, p0, Lcom/android/settings/users/UserSettings;->mProfileExists:Z

    .line 261
    new-instance v0, Lcom/android/settings/users/UserSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$3;-><init>(Lcom/android/settings/users/UserSettings;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/users/UserSettings$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 277
    return-void
.end method

.method private onAddUserClicked()V
    .locals 3

    .prologue
    .line 291
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 292
    :try_start_0
    iget v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    if-nez v0, :cond_0

    .line 293
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    .line 295
    :cond_0
    monitor-exit v1

    .line 296
    return-void

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onRemoveUserClicked(I)V
    .locals 3
    .parameter "userId"

    .prologue
    .line 299
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 300
    :try_start_0
    iget v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    if-nez v0, :cond_0

    .line 301
    iput p1, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    .line 302
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    .line 304
    :cond_0
    monitor-exit v1

    .line 305
    return-void

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onUserCreated(I)V
    .locals 1
    .parameter "userId"

    .prologue
    .line 308
    iput p1, p0, Lcom/android/settings/users/UserSettings;->mAddedUserId:I

    .line 309
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    .line 310
    return-void
.end method

.method private removeThisUser()V
    .locals 3

    .prologue
    .line 406
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 407
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->removeUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :goto_0
    return-void

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "UserSettings"

    const-string v2, "Unable to remove self user"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeUserNow()V
    .locals 2

    .prologue
    .line 390
    iget v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 391
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->removeThisUser()V

    .line 402
    :goto_0
    return-void

    .line 393
    :cond_0
    new-instance v0, Lcom/android/settings/users/UserSettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$7;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-virtual {v0}, Lcom/android/settings/users/UserSettings$7;->start()V

    goto :goto_0
.end method

.method private setPhotoId(Lcom/htc/preference/HtcPreference;Landroid/content/pm/UserInfo;)V
    .locals 3
    .parameter "pref"
    .parameter "user"

    .prologue
    .line 568
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 569
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 570
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 572
    :cond_0
    return-void
.end method

.method private setUserName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    .line 576
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mNicknamePreference:Lcom/android/settings/SelectableEditTextPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/SelectableEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 577
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 578
    return-void
.end method

.method private switchUserNow(I)V
    .locals 1
    .parameter "userId"

    .prologue
    .line 439
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :goto_0
    return-void

    .line 440
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateUserList()V
    .locals 13

    .prologue
    const v12, 0x20800d1

    const/4 v2, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 446
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v10}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v9

    .line 449
    .local v9, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreferenceGroup;->removeAll()V

    .line 450
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v1, v11}, Lcom/htc/preference/HtcPreferenceGroup;->setOrderingAsAdded(Z)V

    .line 456
    const/4 v1, 0x2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    if-le v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    if-ne v10, v1, :cond_6

    .line 457
    :cond_2
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mRootPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v3}, Lcom/htc/preference/HtcPreferenceGroup;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    if-nez v1, :cond_3

    .line 458
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mRootPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 470
    :cond_3
    :goto_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 471
    .local v7, missingIcons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    .line 473
    .local v8, user:Landroid/content/pm/UserInfo;
    iget v1, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-ne v1, v3, :cond_7

    .line 474
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/htc/preference/HtcPreference;

    .line 475
    .local v0, pref:Lcom/htc/preference/HtcPreference;
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mNicknamePreference:Lcom/android/settings/SelectableEditTextPreference;

    iget-object v3, v8, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/settings/SelectableEditTextPreference;->setText(Ljava/lang/String;)V

    .line 476
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mNicknamePreference:Lcom/android/settings/SelectableEditTextPreference;

    iget-object v3, v8, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/settings/SelectableEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 498
    :cond_5
    :goto_3
    iget-object v1, v8, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 499
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    iget v3, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_b

    .line 500
    iget v1, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    invoke-virtual {v0, v12}, Lcom/htc/preference/HtcPreference;->setIcon(I)V

    goto :goto_2

    .line 462
    .end local v0           #pref:Lcom/htc/preference/HtcPreference;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #missingIcons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8           #user:Landroid/content/pm/UserInfo;
    :cond_6
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mRootPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v3}, Lcom/htc/preference/HtcPreferenceGroup;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 463
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mRootPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_1

    .line 480
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v7       #missingIcons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v8       #user:Landroid/content/pm/UserInfo;
    :cond_7
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mRootPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v3}, Lcom/htc/preference/HtcPreferenceGroup;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    if-nez v1, :cond_8

    .line 481
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mRootPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 485
    :cond_8
    new-instance v0, Lcom/android/settings/users/UserPreference;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v3, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-nez v4, :cond_a

    move v4, v10

    :goto_4
    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZLandroid/view/View$OnClickListener;)V

    .line 487
    .restart local v0       #pref:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setKey(Ljava/lang/String;)V

    .line 489
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 490
    iget v1, v8, Landroid/content/pm/UserInfo;->id:I

    if-nez v1, :cond_9

    .line 491
    const v1, 0x7f0c129c

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 493
    :cond_9
    iget-object v1, v8, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 494
    invoke-direct {p0, v8}, Lcom/android/settings/users/UserSettings;->isInitialized(Landroid/content/pm/UserInfo;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 495
    const v1, 0x7f0c129a

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto/16 :goto_3

    .end local v0           #pref:Lcom/htc/preference/HtcPreference;
    :cond_a
    move v4, v11

    .line 485
    goto :goto_4

    .line 504
    .restart local v0       #pref:Lcom/htc/preference/HtcPreference;
    :cond_b
    invoke-direct {p0, v0, v8}, Lcom/android/settings/users/UserSettings;->setPhotoId(Lcom/htc/preference/HtcPreference;Landroid/content/pm/UserInfo;)V

    goto/16 :goto_2

    .line 509
    .end local v0           #pref:Lcom/htc/preference/HtcPreference;
    .end local v8           #user:Landroid/content/pm/UserInfo;
    :cond_c
    iget-boolean v1, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    if-eqz v1, :cond_d

    .line 510
    new-instance v0, Lcom/android/settings/users/UserPreference;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v3, -0xa

    move v4, v11

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZLandroid/view/View$OnClickListener;)V

    .line 512
    .restart local v0       #pref:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v0, v11}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 513
    const v1, 0x7f0c12af

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 514
    const v1, 0x7f0c12b7

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 516
    invoke-virtual {v0, v12}, Lcom/htc/preference/HtcPreference;->setIcon(I)V

    .line 517
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 519
    .end local v0           #pref:Lcom/htc/preference/HtcPreference;
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 522
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 523
    invoke-direct {p0, v7}, Lcom/android/settings/users/UserSettings;->loadIconsAsync(Ljava/util/List;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 647
    const v0, 0x7f0c12d9

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 617
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/users/UserPreference;

    if-eqz v1, :cond_0

    .line 618
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/users/UserPreference;

    invoke-virtual {v1}, Lcom/android/settings/users/UserPreference;->getUserId()I

    move-result v0

    .line 619
    .local v0, userId:I
    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->onRemoveUserClicked(I)V

    .line 621
    .end local v0           #userId:I
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    .line 154
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 156
    if-eqz p1, :cond_1

    .line 157
    const-string v0, "adding_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const-string v0, "adding_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/users/UserSettings;->mAddedUserId:I

    .line 160
    :cond_0
    const-string v0, "removing_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    const-string v0, "removing_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    .line 165
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    .line 166
    const v0, 0x7f060050

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->addPreferencesFromResource(I)V

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mRootPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    .line 168
    const-string v0, "user_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Lcom/htc/preference/HtcPreferenceGroup;

    .line 169
    const-string v0, "user_me"

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/htc/preference/HtcPreference;

    .line 170
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 171
    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mIsOwner:Z

    if-nez v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 174
    :cond_2
    const-string v0, "user_owner_info"

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    .line 175
    .local v6, ownerInfo:Lcom/htc/preference/HtcPreference;
    if-eqz v6, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mIsOwner:Z

    if-nez v0, :cond_3

    .line 176
    const v0, 0x7f0c0c5b

    invoke-virtual {v6, v0}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 178
    :cond_3
    const-string v0, "user_nickname"

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SelectableEditTextPreference;

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mNicknamePreference:Lcom/android/settings/SelectableEditTextPreference;

    .line 179
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mNicknamePreference:Lcom/android/settings/SelectableEditTextPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/SelectableEditTextPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 180
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mNicknamePreference:Lcom/android/settings/SelectableEditTextPreference;

    invoke-virtual {v0}, Lcom/android/settings/SelectableEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 182
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mNicknamePreference:Lcom/android/settings/SelectableEditTextPreference;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectableEditTextPreference;->setInitialSelectionMode(I)V

    .line 184
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->loadProfile()V

    .line 185
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->setHasOptionsMenu(Z)V

    .line 186
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 187
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 190
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "dialogId"

    .prologue
    const v6, 0x104000a

    const/high16 v7, 0x104

    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 321
    packed-switch p1, :pswitch_data_0

    .line 385
    :goto_0
    return-object v0

    .line 323
    :pswitch_0
    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    iget v6, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    if-ne v4, v6, :cond_0

    const v4, 0x7f0c12b1

    :goto_1
    invoke-virtual {v5, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    iget v6, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    if-ne v4, v6, :cond_1

    const v4, 0x7f0c12b4

    :goto_2
    invoke-virtual {v5, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c12b9

    new-instance v6, Lcom/android/settings/users/UserSettings$4;

    invoke-direct {v6, p0}, Lcom/android/settings/users/UserSettings$4;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 338
    .local v0, dlg:Landroid/app/Dialog;
    goto :goto_0

    .line 323
    .end local v0           #dlg:Landroid/app/Dialog;
    :cond_0
    const v4, 0x7f0c12b2

    goto :goto_1

    :cond_1
    const v4, 0x7f0c12b5

    goto :goto_2

    .line 341
    :pswitch_1
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0c12ac

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 346
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 348
    .local v3, preferences:Landroid/content/SharedPreferences;
    const-string v4, "key_add_user_long_message_displayed"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 350
    .local v1, longMessageDisplayed:Z
    if-eqz v1, :cond_2

    const v2, 0x7f0c12a6

    .line 353
    .local v2, messageResId:I
    :goto_3
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0c12a4

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/users/UserSettings$5;

    invoke-direct {v5, p0, v1, v3}, Lcom/android/settings/users/UserSettings$5;-><init>(Lcom/android/settings/users/UserSettings;ZLandroid/content/SharedPreferences;)V

    invoke-virtual {v4, v6, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 368
    .restart local v0       #dlg:Landroid/app/Dialog;
    goto/16 :goto_0

    .line 350
    .end local v0           #dlg:Landroid/app/Dialog;
    .end local v2           #messageResId:I
    :cond_2
    const v2, 0x7f0c12a5

    goto :goto_3

    .line 371
    .end local v1           #longMessageDisplayed:Z
    .end local v3           #preferences:Landroid/content/SharedPreferences;
    :pswitch_3
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0c12a7

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c12a8

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c12aa

    new-instance v6, Lcom/android/settings/users/UserSettings$6;

    invoke-direct {v6, p0}, Lcom/android/settings/users/UserSettings$6;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c12ab

    invoke-virtual {v4, v5, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 382
    .restart local v0       #dlg:Landroid/app/Dialog;
    goto/16 :goto_0

    .line 321
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 10
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 215
    iget-boolean v5, p0, Lcom/android/settings/users/UserSettings;->mIsOwner:Z

    if-eqz v5, :cond_2

    .line 217
    const/4 v2, 0x1

    .line 219
    .local v2, enableAddUser:Z
    const-string v5, "DeviceManager3LM"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IDeviceManager3LM$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceManager3LM;

    move-result-object v1

    .line 223
    .local v1, dm:Landroid/os/IDeviceManager3LM;
    if-eqz v1, :cond_0

    .line 224
    :try_start_0
    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->getMultiUserEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 230
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v5

    iget-object v6, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, v9}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v5, v6, :cond_1

    .line 233
    const v5, 0x7f0c1296

    invoke-interface {p1, v9, v8, v9, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 234
    .local v0, addUserItem:Landroid/view/MenuItem;
    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 242
    .end local v0           #addUserItem:Landroid/view/MenuItem;
    .end local v1           #dm:Landroid/os/IDeviceManager3LM;
    .end local v2           #enableAddUser:Z
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 243
    return-void

    .line 237
    :cond_2
    iget-object v5, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getUserName()Ljava/lang/String;

    move-result-object v3

    .line 238
    .local v3, nickname:Ljava/lang/String;
    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c12ae

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v9, v5, v9, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    .line 240
    .local v4, removeThisUser:Landroid/view/MenuItem;
    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1

    .line 226
    .end local v3           #nickname:Ljava/lang/String;
    .end local v4           #removeThisUser:Landroid/view/MenuItem;
    .restart local v1       #dm:Landroid/os/IDeviceManager3LM;
    .restart local v2       #enableAddUser:Z
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 201
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onDestroy()V

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 203
    return-void
.end method

.method public onDialogShowing()V
    .locals 0

    .prologue
    .line 314
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onDialogShowing()V

    .line 316
    invoke-virtual {p0, p0}, Lcom/android/settings/users/UserSettings;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 317
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 625
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 626
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    .line 627
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    .line 628
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->updateUserList()V

    .line 629
    monitor-exit v1

    .line 630
    return-void

    .line 629
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 247
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 248
    .local v0, itemId:I
    if-ne v0, v1, :cond_0

    .line 249
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->onAddUserClicked()V

    .line 255
    :goto_0
    return v1

    .line 251
    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 252
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/users/UserSettings;->onRemoveUserClicked(I)V

    goto :goto_0

    .line 255
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 634
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mNicknamePreference:Lcom/android/settings/SelectableEditTextPreference;

    if-ne p1, v1, :cond_1

    move-object v0, p2

    .line 635
    check-cast v0, Ljava/lang/String;

    .line 636
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mNicknamePreference:Lcom/android/settings/SelectableEditTextPreference;

    if-ne p1, v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 638
    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->setUserName(Ljava/lang/String;)V

    .line 640
    :cond_0
    const/4 v1, 0x1

    .line 642
    .end local v0           #value:Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 8
    .parameter "pref"

    .prologue
    const/4 v5, 0x1

    .line 582
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/htc/preference/HtcPreference;

    if-ne p1, v3, :cond_2

    .line 584
    iget-boolean v3, p0, Lcom/android/settings/users/UserSettings;->mProfileExists:Z

    if-nez v3, :cond_1

    .line 585
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT"

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 587
    .local v0, editProfile:Landroid/content/Intent;
    const-string v3, "newLocalProfile"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 593
    :goto_0
    const-string v3, "finishActivityOnSaveCompleted"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 594
    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->startActivity(Landroid/content/Intent;)V

    .line 608
    .end local v0           #editProfile:Landroid/content/Intent;
    .end local p1
    :cond_0
    :goto_1
    const/4 v3, 0x0

    return v3

    .line 589
    .restart local p1
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    sget-object v4, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v0       #editProfile:Landroid/content/Intent;
    goto :goto_0

    .line 595
    .end local v0           #editProfile:Landroid/content/Intent;
    :cond_2
    instance-of v3, p1, Lcom/android/settings/users/UserPreference;

    if-eqz v3, :cond_0

    .line 596
    check-cast p1, Lcom/android/settings/users/UserPreference;

    .end local p1
    invoke-virtual {p1}, Lcom/android/settings/users/UserPreference;->getUserId()I

    move-result v2

    .line 598
    .local v2, userId:I
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 599
    .local v1, user:Landroid/content/pm/UserInfo;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_3

    .line 600
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    goto :goto_1

    .line 602
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/settings/users/UserSettings;->isInitialized(Landroid/content/pm/UserInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 603
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    iget v7, v1, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 194
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 195
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->loadProfile()V

    .line 196
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->updateUserList()V

    .line 197
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 207
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 209
    const-string v0, "adding_user"

    iget v1, p0, Lcom/android/settings/users/UserSettings;->mAddedUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 210
    const-string v0, "removing_user"

    iget v1, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 211
    return-void
.end method
