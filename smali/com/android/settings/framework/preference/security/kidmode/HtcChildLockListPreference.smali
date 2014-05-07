.class public Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;
.super Lcom/android/settings/framework/preference/HtcAbsListPreference;
.source "HtcChildLockListPreference.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mChildLockEntries:[Ljava/lang/String;

.field private mChildLockEntriesDescription:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIsAlignLastControl:Z

.field mListAdapter:Landroid/widget/ListAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->TAG:Ljava/lang/String;

    .line 38
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsListPreference;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->mIsAlignLastControl:Z

    .line 54
    iput-object p1, p0, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->mContext:Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->init()V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->mIsAlignLastControl:Z

    .line 65
    iput-object p1, p0, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->mContext:Landroid/content/Context;

    .line 66
    invoke-direct {p0}, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->init()V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->mIsAlignLastControl:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->mChildLockEntries:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->mChildLockEntriesDescription:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/Context;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-static {p0, p1}, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->setExitAction(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->DEBUG:Z

    return v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static getExitAction(Landroid/content/Context;)I
    .locals 8
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 136
    const/4 v7, 0x0

    .line 137
    .local v7, exitAction:I
    const/4 v6, 0x0

    .line 139
    .local v6, c:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/framework/preference/security/kidmode/HtcKidModeProviderConstants;->EXIT_ACTION_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 142
    if-eqz v6, :cond_0

    .line 143
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    const-string v0, "prefs_value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 148
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 150
    :cond_0
    return v7

    .line 146
    :cond_1
    sget-object v0, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->TAG:Ljava/lang/String;

    const-string v1, "Failed to move the cursor to the first"

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 70
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v0

    const/high16 v1, 0x40b0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->mIsAlignLastControl:Z

    .line 73
    :cond_0
    return-void
.end method

.method private initAdapter()V
    .locals 6

    .prologue
    .line 170
    new-instance v0, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference$1;

    iget-object v2, p0, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f04007c

    const v4, 0x1020014

    iget-object v5, p0, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->mChildLockEntries:[Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference$1;-><init>(Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->mListAdapter:Landroid/widget/ListAdapter;

    .line 204
    return-void
.end method

.method private static setExitAction(Landroid/content/Context;I)I
    .locals 4
    .parameter "context"
    .parameter "exitAction"

    .prologue
    const/4 v3, 0x0

    .line 161
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 163
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "prefs_value"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/framework/preference/security/kidmode/HtcKidModeProviderConstants;->EXIT_ACTION_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method


# virtual methods
.method protected getCustomDialogTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c01ee

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomEntries()[Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->mChildLockEntries:[Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->mChildLockEntriesDescription:[Ljava/lang/String;

    .line 95
    invoke-direct {p0}, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->initAdapter()V

    .line 97
    iget-object v0, p0, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->mChildLockEntries:[Ljava/lang/String;

    return-object v0
.end method

.method protected getCustomEntryValues()[Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 102
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c01ec

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 2
    .parameter "positiveResult"

    .prologue
    .line 236
    if-eqz p1, :cond_0

    .line 239
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference$3;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference$3;-><init>(Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->setValue(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 253
    :cond_0
    return-void
.end method

.method protected onGetValueInBackground(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 110
    invoke-static {p1}, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->getExitAction(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onMapValueToIndex(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .parameter "value"

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->onMapValueToIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 118
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 121
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method protected onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V
    .locals 4
    .parameter "builder"

    .prologue
    const/4 v3, 0x0

    .line 208
    invoke-super {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsListPreference;->onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V

    .line 210
    iget-object v0, p0, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference$2;

    invoke-direct {v2, p0}, Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference$2;-><init>(Lcom/android/settings/framework/preference/security/kidmode/HtcChildLockListPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 230
    invoke-virtual {p1, v3, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 231
    return-void
.end method

.method protected onSetValueInBackground(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "newValue"

    .prologue
    .line 127
    const/4 v0, 0x1

    return v0
.end method
