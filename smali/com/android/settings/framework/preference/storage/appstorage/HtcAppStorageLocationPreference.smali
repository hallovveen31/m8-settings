.class public Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;
.super Lcom/htc/preference/HtcListPreference;
.source "HtcAppStorageLocationPreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;


# static fields
.field public static final ACTION_APP_STORAGE_LOCATION_CHANGED:Ljava/lang/String; = "com.htc.intent.action.APP_STORAGE_LOCATION_CHANGED"

.field public static final EXTRA_PACKAGE:Ljava/lang/String; = "com.htc.intent.extra.package"

.field public static final KEY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static sHTC_PREFIX_APP_STORAGE_LOCATION:Ljava/lang/String;


# instance fields
.field private mDatabaseKey:Ljava/lang/String;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsReceiverRegist:Z

.field private mPackageName:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->TAG:Ljava/lang/String;

    .line 44
    const-class v0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "packageName"
    .parameter "title"

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->mDatabaseKey:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->mPackageName:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->mIsReceiverRegist:Z

    .line 58
    new-instance v0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference$1;-><init>(Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 99
    invoke-virtual {p0, p3, p4}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->initialize(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "packageName"
    .parameter "title"

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method private Log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 235
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 236
    sget-object v0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->mDatabaseKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->Log(Ljava/lang/String;)V

    return-void
.end method

.method private notifyAppToSyncValue()V
    .locals 3

    .prologue
    .line 229
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.APP_STORAGE_LOCATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 230
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.intent.extra.package"

    iget-object v2, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 232
    return-void
.end method


# virtual methods
.method protected initialize(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "packageName"
    .parameter "title"

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 107
    new-instance v4, Landroid/content/IntentFilter;

    const-string v6, "com.htc.intent.action.APP_STORAGE_LOCATION_CHANGED"

    invoke-direct {v4, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->mIntentFilter:Landroid/content/IntentFilter;

    .line 111
    iget-boolean v4, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->mIsReceiverRegist:Z

    if-nez v4, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v8, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v4

    const/high16 v9, 0x40b0

    cmpl-float v4, v4, v9

    if-ltz v4, :cond_2

    const-string v4, "com.htc.permission.APP_PLATFORM"

    :goto_0
    invoke-virtual {v6, v7, v8, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 113
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->mIsReceiverRegist:Z

    .line 117
    :cond_0
    sget-object v4, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->sHTC_PREFIX_APP_STORAGE_LOCATION:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 118
    sget-object v4, Lcom/android/settings/framework/database/HtcDatabaseTable;->SYSTEM:Lcom/android/settings/framework/database/HtcDatabaseTable;

    const-string v5, "HTC_PREFIX_APP_STORAGE_LOCATION"

    const-string v6, "htc_app_storage_loc_"

    invoke-static {v4, v5, v6}, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/settings/framework/database/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->sHTC_PREFIX_APP_STORAGE_LOCATION:Ljava/lang/String;

    .line 125
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 126
    invoke-virtual {p0, p2}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 127
    iput-object p1, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->mPackageName:Ljava/lang/String;

    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->sHTC_PREFIX_APP_STORAGE_LOCATION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->mDatabaseKey:Ljava/lang/String;

    .line 132
    invoke-virtual {p0, v10}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->setPersistent(Z)V

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080096

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 137
    .local v2, storageList:[Ljava/lang/CharSequence;
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 142
    array-length v1, v2

    .line 143
    .local v1, len:I
    new-array v3, v1, [Ljava/lang/String;

    .line 144
    .local v3, values:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 145
    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #storageList:[Ljava/lang/CharSequence;
    .end local v3           #values:[Ljava/lang/String;
    :cond_2
    move-object v4, v5

    .line 112
    goto :goto_0

    .line 147
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v2       #storageList:[Ljava/lang/CharSequence;
    .restart local v3       #values:[Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->mDatabaseKey:Ljava/lang/String;

    invoke-static {v4, v5, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->setValue(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 155
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 165
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcListPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 167
    if-gez p2, :cond_0

    .line 197
    :goto_0
    return-void

    .line 174
    :cond_0
    add-int/lit8 v1, p2, 0x1

    .line 176
    .local v1, value:I
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->mDatabaseKey:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 182
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, selectedValue:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->setValue(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 189
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->notifyAppToSyncValue()V

    .line 191
    const-string v2, "onClick(...)"

    invoke-direct {p0, v2}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->Log(Ljava/lang/String;)V

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t which: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->Log(Ljava/lang/String;)V

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t selectedValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->Log(Ljava/lang/String;)V

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t setSummary: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->Log(Ljava/lang/String;)V

    .line 196
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->mIsReceiverRegist:Z

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->mIsReceiverRegist:Z

    .line 246
    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/htc/preference/HtcListPreference;->onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 161
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 6
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 250
    iget-boolean v0, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->mIsReceiverRegist:Z

    if-nez v0, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v0

    const/high16 v5, 0x40b0

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_1

    const-string v0, "com.htc.permission.APP_PLATFORM"

    :goto_0
    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->mIsReceiverRegist:Z

    .line 254
    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    .line 251
    goto :goto_0
.end method
