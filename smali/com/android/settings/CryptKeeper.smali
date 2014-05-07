.class public Lcom/android/settings/CryptKeeper;
.super Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CryptKeeper$ValidationTask;,
        Lcom/android/settings/CryptKeeper$DecryptTask;,
        Lcom/android/settings/CryptKeeper$FadeToBlack;,
        Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;
    }
.end annotation


# static fields
.field static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

#the value of this static final field might be set in the static constructor
.field private static final COOL_DOWN_ATTEMPTS:I = 0x0

.field private static final COOL_DOWN_INTERVAL:I = 0x1e

.field private static final DECRYPT_STATE:Ljava/lang/String; = "trigger_restart_framework"

.field private static final EXTRA_FORCE_VIEW:Ljava/lang/String; = "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

.field private static final FORCE_VIEW_ERROR:Ljava/lang/String; = "error"

.field private static final FORCE_VIEW_PASSWORD:Ljava/lang/String; = "password"

.field private static final FORCE_VIEW_PROGRESS:Ljava/lang/String; = "progress"

#the value of this static final field might be set in the static constructor
.field private static final MAX_FAILED_ATTEMPTS:I = 0x0

.field private static final MESSAGE_COOLDOWN:I = 0x2

.field private static final MESSAGE_NOTIFY:I = 0x3

.field private static final MESSAGE_UPDATE_PROGRESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CryptKeeper"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCooldown:I

.field private mEncryptionGoneBad:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIgnoreBack:Z

.field private mNotificationCountdown:I

.field private mPasswordEntry:Landroid/widget/EditText;

.field private mValidationComplete:Z

.field private mValidationRequested:Z

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->getDecryptStorageMaxFailedAttempts()I

    move-result v0

    sput v0, Lcom/android/settings/CryptKeeper;->MAX_FAILED_ATTEMPTS:I

    .line 98
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->getDecryptStorageCoolDownAttempts()I

    move-result v0

    sput v0, Lcom/android/settings/CryptKeeper;->COOL_DOWN_ATTEMPTS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;-><init>()V

    .line 117
    iput-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mIgnoreBack:Z

    .line 122
    iput v0, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    .line 292
    new-instance v0, Lcom/android/settings/CryptKeeper$1;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$1;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/CryptKeeper;)Landroid/os/storage/IMountService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 84
    sget v0, Lcom/android/settings/CryptKeeper;->MAX_FAILED_ATTEMPTS:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/settings/CryptKeeper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/settings/CryptKeeper;->mEncryptionGoneBad:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->setupUi()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->updateProgress()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->notifyUser()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->takeEmergencyCallAction()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/CryptKeeper;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/android/settings/CryptKeeper;->setRemainedAttemptDescription(I)V

    return-void
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 84
    sget v0, Lcom/android/settings/CryptKeeper;->COOL_DOWN_ATTEMPTS:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/CryptKeeper;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/CryptKeeper;->showScreenLockedAlertDialog(II)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/settings/CryptKeeper;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput p1, p0, Lcom/android/settings/CryptKeeper;->mCooldown:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->cooldown()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/CryptKeeper;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/CryptKeeper;Landroid/widget/TextView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 84
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/CryptKeeper;->tryPasswordAgain(Landroid/widget/TextView;II)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/settings/CryptKeeper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/settings/CryptKeeper;->mValidationComplete:Z

    return p1
.end method

.method private cooldown()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 600
    const v2, 0x7f090015

    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 602
    .local v0, status:Landroid/view/View;
    iget v2, p0, Lcom/android/settings/CryptKeeper;->mCooldown:I

    if-gtz v2, :cond_0

    .line 604
    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 605
    iput-boolean v4, p0, Lcom/android/settings/CryptKeeper;->mIgnoreBack:Z

    .line 623
    invoke-virtual {p0, v3}, Lcom/android/settings/CryptKeeper;->enableDecryptButton(Z)V

    .line 624
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->setNormalStatusTextOnDecryptStorage()V

    .line 666
    .end local v0           #status:Landroid/view/View;
    :goto_0
    return-void

    .line 649
    .restart local v0       #status:Landroid/view/View;
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/settings/CryptKeeper;->enableDecryptButton(Z)V

    .line 652
    const v2, 0x7f0c0c71

    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 654
    .local v1, template:Ljava/lang/CharSequence;
    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 655
    check-cast v0, Landroid/widget/TextView;

    .end local v0           #status:Landroid/view/View;
    new-array v2, v3, [Ljava/lang/CharSequence;

    iget v3, p0, Lcom/android/settings/CryptKeeper;->mCooldown:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 662
    :cond_1
    :goto_1
    iget v2, p0, Lcom/android/settings/CryptKeeper;->mCooldown:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/settings/CryptKeeper;->mCooldown:I

    .line 663
    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 664
    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 657
    .restart local v0       #status:Landroid/view/View;
    :cond_2
    instance-of v2, v0, Lcom/htc/widget/HtcListItemLabeledLayout;

    if-eqz v2, :cond_1

    .line 658
    check-cast v0, Lcom/htc/widget/HtcListItemLabeledLayout;

    .end local v0           #status:Landroid/view/View;
    new-array v2, v3, [Ljava/lang/CharSequence;

    iget v3, p0, Lcom/android/settings/CryptKeeper;->mCooldown:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItemLabeledLayout;->setLabelText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private delayAudioNotification()V
    .locals 2

    .prologue
    .line 943
    const-string v0, "CryptKeeper"

    const-string v1, "User entering password: delay audio notification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    .line 945
    return-void
.end method

.method private encryptionProgressInit()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 514
    const-string v1, "CryptKeeper"

    const-string v2, "Encryption progress screen initializing."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 516
    const-string v1, "CryptKeeper"

    const-string v2, "Acquiring wakelock."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 518
    .local v0, pm:Landroid/os/PowerManager;
    const/16 v1, 0x1a

    const-string v2, "CryptKeeper"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 519
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 522
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    const v1, 0x7f09005e

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 524
    iput-boolean v3, p0, Lcom/android/settings/CryptKeeper;->mIgnoreBack:Z

    .line 527
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->updateProgress()V

    .line 528
    return-void
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 2

    .prologue
    .line 805
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 806
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 807
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 809
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .locals 12
    .parameter "imm"
    .parameter "shouldIncludeAuxiliarySubtypes"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 765
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 768
    .local v1, enabledImis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v2, 0x0

    .line 770
    .local v2, filteredImisCount:I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 772
    .local v5, imi:Landroid/view/inputmethod/InputMethodInfo;
    if-le v2, v10, :cond_1

    .line 798
    .end local v5           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :goto_1
    return v10

    .line 773
    .restart local v5       #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    invoke-virtual {p1, v5, v10}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    .line 776
    .local v8, subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 777
    add-int/lit8 v2, v2, 0x1

    .line 778
    goto :goto_0

    .line 781
    :cond_2
    const/4 v0, 0x0

    .line 782
    .local v0, auxCount:I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodSubtype;

    .line 783
    .local v7, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 784
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 787
    .end local v7           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    sub-int v6, v11, v0

    .line 792
    .local v6, nonAuxCount:I
    if-gtz v6, :cond_5

    if-eqz p2, :cond_0

    if-le v0, v10, :cond_0

    .line 793
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 794
    goto :goto_0

    .line 798
    .end local v0           #auxCount:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v6           #nonAuxCount:I
    .end local v8           #subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_6
    if-gt v2, v10, :cond_7

    const/4 v11, 0x0

    invoke-virtual {p1, v11, v9}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v10, :cond_8

    :cond_7
    move v9, v10

    :cond_8
    move v10, v9

    goto :goto_1
.end method

.method private isDebugView()Z
    .locals 2

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isDebugView(Ljava/lang/String;)Z
    .locals 2
    .parameter "viewType"

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isEmergencyCallCapable()Z
    .locals 2

    .prologue
    .line 910
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private launchEmergencyDialer()V
    .locals 2

    .prologue
    .line 933
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 934
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 936
    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->startActivity(Landroid/content/Intent;)V

    .line 937
    return-void
.end method

.method private notifyUser()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 327
    iget v0, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    if-lez v0, :cond_1

    .line 328
    const-string v0, "CryptKeeper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Counting down to notify user..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget v0, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    .line 345
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 346
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 347
    return-void

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 331
    const-string v0, "CryptKeeper"

    const-string v1, "Notifying user that we are waiting for input..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private passwordEntryInit()V
    .locals 15

    .prologue
    .line 669
    const v11, 0x7f09005b

    invoke-virtual {p0, v11}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    iput-object v11, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    .line 670
    iget-object v11, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v11, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 671
    iget-object v11, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->requestFocus()Z

    .line 673
    iget-object v11, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v11, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 674
    iget-object v11, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v11, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 675
    iget-object v11, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v11, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 678
    const-string v11, "phone"

    invoke-virtual {p0, v11}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 679
    .local v10, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v11

    if-nez v11, :cond_0

    .line 680
    const v11, 0x7f090058

    invoke-virtual {p0, v11}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 681
    .local v1, emergencyCall:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 682
    const-string v11, "CryptKeeper"

    const-string v12, "Removing the emergency Call button"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const/16 v11, 0x8

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 688
    .end local v1           #emergencyCall:Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "enabled_input_methods"

    invoke-static {v11, v12}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 691
    .local v2, enabledIME:Ljava/lang/String;
    const-string v11, ":"

    invoke-virtual {v2, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 692
    .local v6, imes:[Ljava/lang/String;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v8, v0

    .local v8, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v8, :cond_1

    aget-object v4, v0, v3

    .line 693
    .local v4, ime:Ljava/lang/String;
    const-string v11, "com.htc.sense.ime/.HTCIMEService"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 694
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "default_input_method"

    invoke-static {v11, v12, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 715
    .end local v4           #ime:Ljava/lang/String;
    :cond_1
    iget-object v11, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {p0, v11}, Lcom/android/settings/CryptKeeper;->initPasswordEntryInputMode(Landroid/widget/TextView;)V

    .line 718
    const v11, 0x7f09005c

    invoke-virtual {p0, v11}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 719
    .local v5, imeSwitcher:Landroid/view/View;
    const-string v11, "input_method"

    invoke-virtual {p0, v11}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodManager;

    .line 721
    .local v7, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v5, :cond_2

    const/4 v11, 0x0

    invoke-direct {p0, v7, v11}, Lcom/android/settings/CryptKeeper;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 722
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 723
    new-instance v11, Lcom/android/settings/CryptKeeper$3;

    invoke-direct {v11, p0, v7}, Lcom/android/settings/CryptKeeper$3;-><init>(Lcom/android/settings/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v5, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 734
    :cond_2
    iget-object v11, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v11, :cond_3

    .line 735
    const-string v11, "CryptKeeper"

    const-string v12, "Acquiring wakelock."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const-string v11, "power"

    invoke-virtual {p0, v11}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    .line 737
    .local v9, pm:Landroid/os/PowerManager;
    if-eqz v9, :cond_3

    .line 738
    const/16 v11, 0x1a

    const-string v12, "CryptKeeper"

    invoke-virtual {v9, v11, v12}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 739
    iget-object v11, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 744
    .end local v9           #pm:Landroid/os/PowerManager;
    :cond_3
    iget-object v11, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    new-instance v12, Lcom/android/settings/CryptKeeper$4;

    invoke-direct {v12, p0, v7}, Lcom/android/settings/CryptKeeper$4;-><init>(Lcom/android/settings/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V

    const-wide/16 v13, 0x0

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 750
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->updateEmergencyCallButtonState()V

    .line 752
    iget-object v11, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 753
    iget-object v11, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x3

    const-wide/32 v13, 0x1d4c0

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 754
    return-void

    .line 692
    .end local v5           #imeSwitcher:Landroid/view/View;
    .end local v7           #imm:Landroid/view/inputmethod/InputMethodManager;
    .restart local v4       #ime:Ljava/lang/String;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method private resumeCall()V
    .locals 5

    .prologue
    .line 922
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 923
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 925
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 930
    :cond_0
    :goto_0
    return-void

    .line 926
    :catch_0
    move-exception v0

    .line 927
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "CryptKeeper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling ITelephony service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final setAirplaneModeIfNecessary()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 856
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v2

    .line 859
    .local v1, isLteDevice:Z
    :goto_0
    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v3

    if-nez v3, :cond_0

    .line 860
    const-string v3, "CryptKeeper"

    const-string v4, "Going into airplane mode."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 862
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 863
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "state"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 864
    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->sendBroadcast(Landroid/content/Intent;)V

    .line 866
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void

    .line 856
    .end local v1           #isLteDevice:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setupUi()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const v3, 0x7f040032

    .line 430
    iget-boolean v2, p0, Lcom/android/settings/CryptKeeper;->mEncryptionGoneBad:Z

    if-nez v2, :cond_0

    const-string v2, "error"

    invoke-direct {p0, v2}, Lcom/android/settings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 431
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 432
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->showFactoryReset()V

    .line 473
    :cond_1
    :goto_0
    return-void

    .line 436
    :cond_2
    const-string v2, "vold.encrypt_progress"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, progress:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "progress"

    invoke-direct {p0, v2}, Lcom/android/settings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 438
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 439
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->encryptionProgressInit()V

    goto :goto_0

    .line 440
    :cond_4
    iget-boolean v2, p0, Lcom/android/settings/CryptKeeper;->mValidationComplete:Z

    if-nez v2, :cond_5

    const-string v2, "password"

    invoke-direct {p0, v2}, Lcom/android/settings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 443
    :cond_5
    invoke-virtual {p0, p0}, Lcom/android/settings/CryptKeeper;->setHtcContentView(Landroid/content/Context;)V

    .line 460
    sget v1, Lcom/android/settings/CryptKeeper;->MAX_FAILED_ATTEMPTS:I

    invoke-virtual {p0, p0, v1}, Lcom/android/settings/CryptKeeper;->initOtherUiOfDecryptStorage(Landroid/content/Context;I)V

    .line 465
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->passwordEntryInit()V

    goto :goto_0

    .line 467
    :cond_6
    iget-boolean v2, p0, Lcom/android/settings/CryptKeeper;->mValidationRequested:Z

    if-nez v2, :cond_1

    .line 469
    new-instance v2, Lcom/android/settings/CryptKeeper$ValidationTask;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/CryptKeeper$ValidationTask;-><init>(Lcom/android/settings/CryptKeeper;Lcom/android/settings/CryptKeeper$1;)V

    check-cast v1, [Ljava/lang/Void;

    invoke-virtual {v2, v1}, Lcom/android/settings/CryptKeeper$ValidationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 470
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/CryptKeeper;->mValidationRequested:Z

    goto :goto_0
.end method

.method private showFactoryReset()V
    .locals 7

    .prologue
    const v6, 0x7f0c0c74

    const/4 v5, 0x0

    .line 532
    const v3, 0x7f090059

    invoke-virtual {p0, v3}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 535
    const v3, 0x7f09005f

    invoke-virtual {p0, v3}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 536
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 537
    new-instance v3, Lcom/android/settings/CryptKeeper$2;

    invoke-direct {v3, p0}, Lcom/android/settings/CryptKeeper$2;-><init>(Lcom/android/settings/CryptKeeper;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 546
    const v3, 0x7f09002a

    invoke-virtual {p0, v3}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0c0c73

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 549
    const v3, 0x7f090015

    invoke-virtual {p0, v3}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 550
    .local v1, text:Landroid/view/View;
    instance-of v3, v1, Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 551
    check-cast v1, Landroid/widget/TextView;

    .end local v1           #text:Landroid/view/View;
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 557
    :cond_0
    :goto_0
    const v3, 0x7f090060

    invoke-virtual {p0, v3}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 559
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 560
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 562
    :cond_1
    return-void

    .line 552
    .end local v2           #view:Landroid/view/View;
    .restart local v1       #text:Landroid/view/View;
    :cond_2
    instance-of v3, v1, Lcom/htc/widget/HtcListItemLabeledLayout;

    if-eqz v3, :cond_0

    .line 553
    check-cast v1, Lcom/htc/widget/HtcListItemLabeledLayout;

    .end local v1           #text:Landroid/view/View;
    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcListItemLabeledLayout;->setLabelText(I)V

    goto :goto_0
.end method

.method private takeEmergencyCallAction()V
    .locals 2

    .prologue
    .line 914
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 915
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->resumeCall()V

    .line 919
    :goto_0
    return-void

    .line 917
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->launchEmergencyDialer()V

    goto :goto_0
.end method

.method private updateEmergencyCallButtonState()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 875
    const v5, 0x7f090058

    invoke-virtual {p0, v5}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 877
    .local v0, emergencyCall:Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 907
    :goto_0
    return-void

    .line 880
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->isEmergencyCallCapable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 881
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 882
    new-instance v5, Lcom/android/settings/CryptKeeper$5;

    invoke-direct {v5, p0}, Lcom/android/settings/CryptKeeper$5;-><init>(Lcom/android/settings/CryptKeeper;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 894
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    .line 896
    .local v2, newState:I
    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    .line 898
    const v4, 0x7f0c1257

    .line 899
    .local v4, textId:I
    const v3, 0x7f02020c

    .line 900
    .local v3, phoneCallIcon:I
    const v5, 0x7f02020c

    invoke-virtual {v0, v5, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 906
    .end local v3           #phoneCallIcon:I
    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 890
    .end local v2           #newState:I
    .end local v4           #textId:I
    :cond_1
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 902
    .restart local v2       #newState:I
    :cond_2
    const v4, 0x7f0c1256

    .line 903
    .restart local v4       #textId:I
    const v1, 0x7f020092

    .line 904
    .local v1, emergencyIcon:I
    const v5, 0x7f020092

    invoke-virtual {v0, v5, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1
.end method

.method private updateProgress()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 565
    const-string v5, "vold.encrypt_progress"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 567
    .local v2, state:Ljava/lang/String;
    const-string v5, "error_partially_encrypted"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 568
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->showFactoryReset()V

    .line 596
    :goto_0
    return-void

    .line 572
    :cond_0
    const/4 v1, 0x0

    .line 575
    .local v1, progress:I
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->isDebugView()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    const/16 v1, 0x32

    .line 580
    :goto_1
    const v5, 0x7f0c0c70

    invoke-virtual {p0, v5}, Lcom/android/settings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 581
    .local v3, status:Ljava/lang/CharSequence;
    const-string v5, "CryptKeeper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Encryption progress: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const v5, 0x7f090015

    invoke-virtual {p0, v5}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 583
    .local v4, tv:Landroid/view/View;
    if-eqz v4, :cond_1

    .line 585
    instance-of v5, v4, Landroid/widget/TextView;

    if-eqz v5, :cond_3

    .line 586
    check-cast v4, Landroid/widget/TextView;

    .end local v4           #tv:Landroid/view/View;
    new-array v5, v8, [Ljava/lang/CharSequence;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v3, v5}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 594
    :cond_1
    :goto_2
    iget-object v5, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 595
    iget-object v5, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1388

    invoke-virtual {v5, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 575
    .end local v3           #status:Ljava/lang/CharSequence;
    :cond_2
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_1

    .line 576
    :catch_0
    move-exception v0

    .line 577
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "CryptKeeper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error parsing progress: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 588
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #status:Ljava/lang/CharSequence;
    .restart local v4       #tv:Landroid/view/View;
    :cond_3
    instance-of v5, v4, Lcom/htc/widget/HtcListItemLabeledLayout;

    if-eqz v5, :cond_1

    .line 589
    check-cast v4, Lcom/htc/widget/HtcListItemLabeledLayout;

    .end local v4           #tv:Landroid/view/View;
    new-array v5, v8, [Ljava/lang/CharSequence;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v3, v5}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItemLabeledLayout;->setLabelText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 971
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 961
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mIgnoreBack:Z

    if-eqz v0, :cond_0

    .line 358
    :goto_0
    return-void

    .line 357
    :cond_0
    invoke-super {p0}, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    .line 362
    invoke-super {p0, p1}, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->onCreate(Landroid/os/Bundle;)V

    .line 365
    const-string v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 366
    .local v6, state:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->isDebugView()Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, ""

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "trigger_restart_framework"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 368
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 369
    .local v3, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/ComponentName;

    const-class v7, Lcom/android/settings/CryptKeeper;

    invoke-direct {v2, p0, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 370
    .local v2, name:Landroid/content/ComponentName;
    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-virtual {v3, v2, v7, v8}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 374
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 375
    .local v0, homeIntent:Landroid/content/Intent;
    const-string v7, "android.intent.category.HOME"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    const/high16 v7, 0x1000

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 377
    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->startActivity(Landroid/content/Intent;)V

    .line 387
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->finish()V

    .line 411
    .end local v0           #homeIntent:Landroid/content/Intent;
    .end local v2           #name:Landroid/content/ComponentName;
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    :cond_1
    :goto_0
    return-void

    .line 393
    :cond_2
    const-string v7, "statusbar"

    invoke-virtual {p0, v7}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/StatusBarManager;

    .line 394
    .local v5, sbm:Landroid/app/StatusBarManager;
    const/high16 v7, 0x137

    invoke-virtual {v5, v7}, Landroid/app/StatusBarManager;->disable(I)V

    .line 401
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->setAirplaneModeIfNecessary()V

    .line 402
    const-string v7, "audio"

    invoke-virtual {p0, v7}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager;

    iput-object v7, p0, Lcom/android/settings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    .line 404
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    .line 405
    .local v1, lastInstance:Ljava/lang/Object;
    instance-of v7, v1, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;

    if-eqz v7, :cond_1

    move-object v4, v1

    .line 406
    check-cast v4, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;

    .line 407
    .local v4, retained:Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;
    iget-object v7, v4, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;->wakelock:Landroid/os/PowerManager$WakeLock;

    iput-object v7, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 408
    const-string v7, "CryptKeeper"

    const-string v8, "Restoring wakelock from NonConfigurationInstanceState"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 498
    invoke-super {p0}, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->onDestroy()V

    .line 500
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 501
    const-string v0, "CryptKeeper"

    const-string v1, "Releasing and destroying wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 503
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 505
    :cond_0
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 814
    if-eqz p2, :cond_0

    const/4 v3, 0x6

    if-ne p2, v3, :cond_1

    .line 816
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 818
    .local v0, password:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 835
    .end local v0           #password:Ljava/lang/String;
    :cond_1
    :goto_0
    return v1

    .line 823
    .restart local v0       #password:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 827
    iget-object v3, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 828
    iput-boolean v2, p0, Lcom/android/settings/CryptKeeper;->mIgnoreBack:Z

    .line 830
    const-string v3, "CryptKeeper"

    const-string v4, "Attempting to send command to decrypt"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    new-instance v3, Lcom/android/settings/CryptKeeper$DecryptTask;

    invoke-direct {v3, p0, v5}, Lcom/android/settings/CryptKeeper$DecryptTask;-><init>(Lcom/android/settings/CryptKeeper;Lcom/android/settings/CryptKeeper$1;)V

    new-array v4, v2, [Ljava/lang/String;

    aput-object v0, v4, v1

    invoke-virtual {v3, v4}, Lcom/android/settings/CryptKeeper$DecryptTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v1, v2

    .line 833
    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 949
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->delayAudioNotification()V

    .line 950
    const/4 v0, 0x0

    return v0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 490
    new-instance v0, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;-><init>(Landroid/os/PowerManager$WakeLock;)V

    .line 491
    .local v0, state:Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;
    const-string v1, "CryptKeeper"

    const-string v2, "Handing wakelock off to NonConfigurationInstanceState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 493
    return-object v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 420
    invoke-super {p0}, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->onStart()V

    .line 421
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->setupUi()V

    .line 422
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 477
    invoke-super {p0}, Lcom/android/settings/framework/activity/misc/HtcAbsCryptKeeper;->onStop()V

    .line 478
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 479
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 480
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 481
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 966
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->delayAudioNotification()V

    .line 967
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 955
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->delayAudioNotification()V

    .line 956
    const/4 v0, 0x0

    return v0
.end method
