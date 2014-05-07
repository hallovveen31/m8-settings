.class public Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;
.super Lcom/htc/preference/HtcListPreference;
.source "HtcAppStorageUpdateAllPreferenceextends.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;


# static fields
.field public static final KEY:Ljava/lang/String; = null

.field private static final MESSAGE_QUERY_ALL_APPS_PACKAGE_NAME:I = 0x2

.field private static final MESSAGE_SET_ALL_APPS_STORAGE_TYPE:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static sHTC_PREFIX_APP_STORAGE_LOCATION:Ljava/lang/String;


# instance fields
.field private isAppListReady:Z

.field private mAllAppsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNonUiHandler:Landroid/os/Handler;

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;->TAG:Ljava/lang/String;

    .line 38
    const-class v0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;->KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;->initialize()V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;->mAllAppsList:Ljava/util/ArrayList;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;->isAppListReady:Z

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;->initialize()V

    .line 94
    return-void
.end method

.method private Log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 195
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 196
    sget-object v0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    return-void
.end method

.method private notifyAppToSyncValue(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 187
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.APP_STORAGE_LOCATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.intent.extra.package"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 192
    return-void
.end method

.method private queryAllAppStorageLoc()V
    .locals 6

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 239
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 244
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "com.htc.settings.category.APP_STORAGE_SETTINGS"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    const/16 v4, 0x80

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 248
    .local v3, resolveInfos:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;->mAllAppsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 249
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;->isAppListReady:Z

    .line 251
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 252
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 254
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    const-string v4, "Found a app storage settings"

    invoke-direct {p0, v4}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;->Log(Ljava/lang/String;)V

    .line 255
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t processName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;->Log(Ljava/lang/String;)V

    .line 256
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;->Log(Ljava/lang/String;)V

    .line 257
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;->Log(Ljava/lang/String;)V

    .line 258
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t label: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;->Log(Ljava/lang/String;)V

    .line 259
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t labelResId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/pm/ActivityInfo;->labelRes:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;->Log(Ljava/lang/String;)V

    .line 261
    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;->mAllAppsList:Ljava/util/ArrayList;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 263
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;->isAppListReady:Z

    .line 264
    return-void
.end method

.method private setAllAppStorageValue(I)V
    .locals 6
    .parameter "storageType"

    .prologue
    .line 269
    iget-boolean v4, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;->isAppListReady:Z

    if-nez v4, :cond_0

    .line 270
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;->queryAllAppStorageLoc()V

    .line 273
    :cond_0
    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;->mAllAppsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 274
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 275
    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;->mAllAppsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 276
    .local v2, packageName:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;->sHTC_PREFIX_APP_STORAGE_LOCATION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, databaseKey:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 286
    invoke-direct {p0, v2}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;->notifyAppToSyncValue(Ljava/lang/String;)V

    .line 274
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 288
    .end local v0           #databaseKey:Ljava/lang/String;
    .end local v2           #packageName:Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x0

    return-object v0
.end method

.method protected initialize()V
    .locals 9

    .prologue
    const v8, 0x7f0c028c

    .line 102
    sget-object v5, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;->sHTC_PREFIX_APP_STORAGE_LOCATION:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 103
    sget-object v5, Lcom/android/settings/framework/database/HtcDatabaseTable;->SYSTEM:Lcom/android/settings/framework/database/HtcDatabaseTable;

    const-string v6, "HTC_PREFIX_APP_STORAGE_LOCATION"

    const-string v7, "htc_app_storage_loc_"

    invoke-static {v5, v6, v7}, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/settings/framework/database/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;->sHTC_PREFIX_APP_STORAGE_LOCATION:Ljava/lang/String;

    .line 110
    :cond_0
    invoke-virtual {p0, v8}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;->setTitle(I)V

    .line 111
    invoke-virtual {p0, v8}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;->setDialogTitle(I)V

    .line 116
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;->setPersistent(Z)V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080096

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 121
    .local v3, storageList:[Ljava/lang/CharSequence;
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;->setEntries([Ljava/lang/CharSequence;)V

    .line 126
    array-length v2, v3

    .line 127
    .local v2, len:I
    new-array v4, v2, [Ljava/lang/String;

    .line 128
    .local v4, values:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 129
    add-int/lit8 v5, v0, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 134
    const/4 v1, 0x1

    .line 137
    .local v1, initialValue:I
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;->setValue(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 148
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcListPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 150
    if-gez p2, :cond_0

    .line 183
    :goto_0
    return-void

    .line 157
    :cond_0
    add-int/lit8 v1, p2, 0x1

    .line 159
    .local v1, value:I
    iget-object v2, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;->mNonUiHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 160
    iget-object v2, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;->mNonUiHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 173
    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, selectedValue:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;->setValue(Ljava/lang/String;)V

    .line 177
    const-string v2, "onClick(...)"

    invoke-direct {p0, v2}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;->Log(Ljava/lang/String;)V

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t which: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;->Log(Ljava/lang/String;)V

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t selectedValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;->Log(Ljava/lang/String;)V

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t setSummary: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;->Log(Ljava/lang/String;)V

    .line 182
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 169
    .end local v0           #selectedValue:Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;->TAG:Ljava/lang/String;

    const-string v3, "Can not find the non-UI handler"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onDispatchHandlers(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0
    .parameter "activity"
    .parameter "uiHandler"
    .parameter "nonUiHandler"

    .prologue
    .line 203
    iput-object p2, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;->mUiHandler:Landroid/os/Handler;

    .line 204
    iput-object p3, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;->mNonUiHandler:Landroid/os/Handler;

    .line 206
    return-void
.end method

.method public onHandleNonUiMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 221
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    .line 222
    const/4 v0, 0x0

    .line 233
    :goto_0
    return v0

    .line 225
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 233
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 227
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;->setAllAppStorageValue(I)V

    goto :goto_1

    .line 230
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;->queryAllAppStorageLoc()V

    goto :goto_1

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onHandleUiMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 211
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    .line 212
    const/4 v0, 0x0

    .line 215
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/htc/preference/HtcListPreference;->onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageUpdateAllPreferenceextends;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 144
    return-void
.end method
