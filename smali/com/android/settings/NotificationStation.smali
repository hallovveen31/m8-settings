.class public Lcom/android/settings/NotificationStation;
.super Lcom/android/settings/framework/app/HtcInternalFragment;
.source "NotificationStation.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/NotificationStation$HtcNotificationHistoryAdapter;,
        Lcom/android/settings/NotificationStation$HtcNotificationHistoryViewHolder;,
        Lcom/android/settings/NotificationStation$PackageReceiver;,
        Lcom/android/settings/NotificationStation$NotificationHistoryAdapter;,
        Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final PACKAGE_SCHEME:Ljava/lang/String; = "package"

.field private static final SHOW_HISTORICAL_NOTIFICATIONS:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

.field protected mActionBarExt:Lcom/htc/widget/ActionBarExt;

.field private mAdapter:Lcom/android/settings/NotificationStation$NotificationHistoryAdapter;

.field private mContext:Landroid/content/Context;

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mListView:Lcom/htc/widget/HtcListView;

.field private mListener:Landroid/service/notification/INotificationListener$Stub;

.field private mNoMan:Landroid/app/INotificationManager;

.field private final mNotificationSorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageReceiver:Lcom/android/settings/NotificationStation$PackageReceiver;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRefreshListRunnable:Ljava/lang/Runnable;

.field private mReloadNotificationsRunnable:Ljava/lang/Runnable;

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

    const-class v1, Lcom/android/settings/NotificationStation;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/NotificationStation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;-><init>()V

    .line 83
    new-instance v0, Lcom/android/settings/NotificationStation$PackageReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/NotificationStation$PackageReceiver;-><init>(Lcom/android/settings/NotificationStation;Lcom/android/settings/NotificationStation$1;)V

    iput-object v0, p0, Lcom/android/settings/NotificationStation;->mPackageReceiver:Lcom/android/settings/NotificationStation$PackageReceiver;

    .line 87
    new-instance v0, Lcom/android/settings/NotificationStation$1;

    invoke-direct {v0, p0}, Lcom/android/settings/NotificationStation$1;-><init>(Lcom/android/settings/NotificationStation;)V

    iput-object v0, p0, Lcom/android/settings/NotificationStation;->mRefreshListRunnable:Ljava/lang/Runnable;

    .line 94
    new-instance v0, Lcom/android/settings/NotificationStation$2;

    invoke-direct {v0, p0}, Lcom/android/settings/NotificationStation$2;-><init>(Lcom/android/settings/NotificationStation;)V

    iput-object v0, p0, Lcom/android/settings/NotificationStation;->mListener:Landroid/service/notification/INotificationListener$Stub;

    .line 125
    new-instance v0, Lcom/android/settings/NotificationStation$3;

    invoke-direct {v0, p0}, Lcom/android/settings/NotificationStation$3;-><init>(Lcom/android/settings/NotificationStation;)V

    iput-object v0, p0, Lcom/android/settings/NotificationStation;->mNotificationSorter:Ljava/util/Comparator;

    .line 476
    new-instance v0, Lcom/android/settings/NotificationStation$4;

    invoke-direct {v0, p0}, Lcom/android/settings/NotificationStation$4;-><init>(Lcom/android/settings/NotificationStation;)V

    iput-object v0, p0, Lcom/android/settings/NotificationStation;->mReloadNotificationsRunnable:Ljava/lang/Runnable;

    .line 595
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/NotificationStation;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings/NotificationStation;->refreshList()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/android/settings/NotificationStation;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-static {p0, p1}, Lcom/android/settings/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/NotificationStation;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings/NotificationStation;->startApplicationDetailsActivity(Ljava/lang/String;)V

    return-void
.end method

.method private getResourcesForUserPackage(Ljava/lang/String;I)Landroid/content/res/Resources;
    .locals 5
    .parameter "pkg"
    .parameter "userId"

    .prologue
    .line 300
    const/4 v1, 0x0

    .line 302
    .local v1, r:Landroid/content/res/Resources;
    if-eqz p1, :cond_1

    .line 304
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 305
    const/4 p2, 0x0

    .line 307
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    move-object v2, v1

    .line 315
    :goto_1
    return-object v2

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/settings/NotificationStation;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Icon package not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v2, 0x0

    goto :goto_1

    .line 313
    .end local v0           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/NotificationStation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    goto :goto_0
.end method

.method private loadIconDrawable(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "pkg"
    .parameter "userId"
    .parameter "resId"

    .prologue
    const/4 v3, 0x0

    .line 339
    invoke-direct {p0, p1, p2}, Lcom/android/settings/NotificationStation;->getResourcesForUserPackage(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v1

    .line 341
    .local v1, r:Landroid/content/res/Resources;
    if-nez p3, :cond_0

    move-object v2, v3

    .line 353
    :goto_0
    return-object v2

    .line 346
    :cond_0
    :try_start_0
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, e:Ljava/lang/RuntimeException;
    sget-object v4, Lcom/android/settings/NotificationStation;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Icon not found in "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ": "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 353
    goto :goto_0

    .line 348
    :cond_1
    const-string v2, "<system>"

    goto :goto_1
.end method

.method private loadNotifications()Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    .line 251
    .local v7, currentUserId:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NotificationStation;->mNoMan:Landroid/app/INotificationManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NotificationStation;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Landroid/app/INotificationManager;->getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    .line 252
    .local v4, active:[Landroid/service/notification/StatusBarNotification;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NotificationStation;->mNoMan:Landroid/app/INotificationManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NotificationStation;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x32

    invoke-interface/range {v18 .. v20}, Landroid/app/INotificationManager;->getHistoricalNotifications(Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;

    move-result-object v8

    .line 254
    .local v8, dismissed:[Landroid/service/notification/StatusBarNotification;
    new-instance v15, Ljava/util/ArrayList;

    array-length v0, v4

    move/from16 v18, v0

    array-length v0, v8

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 258
    .local v15, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;>;"
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v5, v0, [[Landroid/service/notification/StatusBarNotification;

    const/16 v18, 0x0

    aput-object v4, v5, v18

    const/16 v18, 0x1

    aput-object v8, v5, v18

    .local v5, arr$:[[Landroid/service/notification/StatusBarNotification;
    array-length v13, v5

    .local v13, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    move v11, v10

    .end local v5           #arr$:[[Landroid/service/notification/StatusBarNotification;
    .end local v10           #i$:I
    .end local v13           #len$:I
    .local v11, i$:I
    :goto_0
    if-ge v11, v13, :cond_a

    aget-object v16, v5, v11

    .line 259
    .local v16, resultset:[Landroid/service/notification/StatusBarNotification;
    move-object/from16 v6, v16

    .local v6, arr$:[Landroid/service/notification/StatusBarNotification;
    array-length v14, v6

    .local v14, len$:I
    const/4 v10, 0x0

    .end local v11           #i$:I
    .restart local v10       #i$:I
    :goto_1
    if-ge v10, v14, :cond_9

    aget-object v17, v6, v10

    .line 260
    .local v17, sbn:Landroid/service/notification/StatusBarNotification;
    new-instance v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;-><init>(Lcom/android/settings/NotificationStation$1;)V

    .line 261
    .local v12, info:Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    .line 262
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v18

    move/from16 v0, v18

    iput v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->user:I

    .line 263
    iget-object v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    move-object/from16 v18, v0

    iget v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->user:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/app/Notification;->icon:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/NotificationStation;->loadIconDrawable(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 264
    iget-object v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    move-object/from16 v18, v0

    iget v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->user:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings/NotificationStation;->loadPackageIconDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->pkgicon:Landroid/graphics/drawable/Drawable;

    .line 265
    iget-object v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings/NotificationStation;->loadPackageName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->pkgname:Ljava/lang/CharSequence;

    .line 266
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 267
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    move-object/from16 v18, v0

    const-string v19, "android.title"

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    .line 268
    iget-object v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    const-string v18, ""

    iget-object v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 269
    :cond_0
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    move-object/from16 v18, v0

    const-string v19, "android.text"

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    .line 272
    :cond_1
    iget-object v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    const-string v18, ""

    iget-object v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 273
    :cond_2
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    .line 276
    :cond_3
    iget-object v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    const-string v18, ""

    iget-object v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 277
    :cond_4
    iget-object v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->pkgname:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    .line 279
    :cond_5
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    .line 280
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/app/Notification;->priority:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->priority:I

    .line 281
    const-string v18, "   [%d] %s: %s"

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    iget-wide v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    iget-object v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    const/16 v20, 0x2

    iget-object v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/android/settings/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    move-object/from16 v0, v16

    if-ne v0, v4, :cond_8

    const/16 v18, 0x1

    :goto_2
    move/from16 v0, v18

    iput-boolean v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->active:Z

    .line 285
    iget v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->user:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    iget v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->user:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v0, v7, :cond_7

    .line 287
    :cond_6
    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 283
    :cond_8
    const/16 v18, 0x0

    goto :goto_2

    .line 258
    .end local v12           #info:Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;
    .end local v17           #sbn:Landroid/service/notification/StatusBarNotification;
    :cond_9
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    .end local v10           #i$:I
    .restart local v11       #i$:I
    goto/16 :goto_0

    .line 293
    .end local v4           #active:[Landroid/service/notification/StatusBarNotification;
    .end local v6           #arr$:[Landroid/service/notification/StatusBarNotification;
    .end local v8           #dismissed:[Landroid/service/notification/StatusBarNotification;
    .end local v11           #i$:I
    .end local v14           #len$:I
    .end local v15           #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;>;"
    .end local v16           #resultset:[Landroid/service/notification/StatusBarNotification;
    :catch_0
    move-exception v9

    .line 294
    .local v9, e:Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    .line 296
    const/4 v15, 0x0

    .end local v9           #e:Landroid/os/RemoteException;
    :cond_a
    return-object v15
.end method

.method private loadPackageIconDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "pkg"
    .parameter "userId"

    .prologue
    .line 319
    const/4 v0, 0x0

    .line 321
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 325
    :goto_0
    return-object v0

    .line 322
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private loadPackageName(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "pkg"

    .prologue
    .line 330
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    const/16 v2, 0x2000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 332
    .local v0, info:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 335
    .end local v0           #info:Landroid/content/pm/ApplicationInfo;
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 333
    .restart local p1
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static varargs logd(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .parameter "msg"
    .parameter "args"

    .prologue
    .line 234
    return-void
.end method

.method private refreshList()V
    .locals 5

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/settings/NotificationStation;->mInfos:Ljava/util/List;

    .line 223
    .local v0, infos:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;>;"
    if-eqz v0, :cond_0

    .line 224
    const-string v1, "adding %d infos"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/android/settings/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    iget-object v1, p0, Lcom/android/settings/NotificationStation;->mAdapter:Lcom/android/settings/NotificationStation$NotificationHistoryAdapter;

    invoke-virtual {v1}, Lcom/android/settings/NotificationStation$NotificationHistoryAdapter;->clear()V

    .line 226
    iget-object v1, p0, Lcom/android/settings/NotificationStation;->mAdapter:Lcom/android/settings/NotificationStation$NotificationHistoryAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings/NotificationStation$NotificationHistoryAdapter;->addAll(Ljava/util/Collection;)V

    .line 227
    iget-object v1, p0, Lcom/android/settings/NotificationStation;->mAdapter:Lcom/android/settings/NotificationStation$NotificationHistoryAdapter;

    iget-object v2, p0, Lcom/android/settings/NotificationStation;->mNotificationSorter:Ljava/util/Comparator;

    invoke-virtual {v1, v2}, Lcom/android/settings/NotificationStation$NotificationHistoryAdapter;->sort(Ljava/util/Comparator;)V

    .line 229
    :cond_0
    return-void
.end method

.method private startApplicationDetailsActivity(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 446
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 448
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 449
    invoke-virtual {p0, v0}, Lcom/android/settings/NotificationStation;->startActivity(Landroid/content/Intent;)V

    .line 450
    return-void
.end method


# virtual methods
.method protected getListView()Lcom/htc/widget/HtcListView;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/settings/NotificationStation;->mListView:Lcom/htc/widget/HtcListView;

    if-nez v0, :cond_0

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/android/settings/NotificationStation;->mListView:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method protected initActionBar()V
    .locals 1

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/android/settings/NotificationStation;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    if-eqz v0, :cond_1

    .line 535
    iget-object v0, p0, Lcom/android/settings/NotificationStation;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    if-nez v0, :cond_0

    .line 536
    invoke-virtual {p0}, Lcom/android/settings/NotificationStation;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getHtcActionBar()Lcom/htc/widget/ActionBarExt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/NotificationStation;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/android/settings/NotificationStation;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-nez v0, :cond_1

    .line 541
    iget-object v0, p0, Lcom/android/settings/NotificationStation;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/NotificationStation;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    .line 544
    :cond_1
    return-void
.end method

.method protected initView()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 511
    invoke-virtual {p0}, Lcom/android/settings/NotificationStation;->initActionBar()V

    .line 513
    iget-object v1, p0, Lcom/android/settings/NotificationStation;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04006f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 515
    .local v0, rootView:Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListView;

    iput-object v1, p0, Lcom/android/settings/NotificationStation;->mListView:Lcom/htc/widget/HtcListView;

    .line 516
    iget-object v1, p0, Lcom/android/settings/NotificationStation;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 517
    iget-object v1, p0, Lcom/android/settings/NotificationStation;->mListView:Lcom/htc/widget/HtcListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 519
    iget-object v1, p0, Lcom/android/settings/NotificationStation;->mViewContainer:Landroid/widget/FrameLayout;

    if-nez v1, :cond_0

    .line 520
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/settings/NotificationStation;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/NotificationStation;->mViewContainer:Landroid/widget/FrameLayout;

    .line 521
    iget-object v1, p0, Lcom/android/settings/NotificationStation;->mViewContainer:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 526
    :cond_0
    iget-object v1, p0, Lcom/android/settings/NotificationStation;->mViewContainer:Landroid/widget/FrameLayout;

    const v2, 0x2080001

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 527
    iget-object v1, p0, Lcom/android/settings/NotificationStation;->mViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 529
    iget-object v1, p0, Lcom/android/settings/NotificationStation;->mViewContainer:Landroid/widget/FrameLayout;

    return-object v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 166
    const-string v0, "onActivityCreated(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/settings/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 182
    new-instance v0, Lcom/android/settings/NotificationStation$HtcNotificationHistoryAdapter;

    iget-object v1, p0, Lcom/android/settings/NotificationStation;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/NotificationStation$HtcNotificationHistoryAdapter;-><init>(Lcom/android/settings/NotificationStation;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/NotificationStation;->mAdapter:Lcom/android/settings/NotificationStation$NotificationHistoryAdapter;

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/NotificationStation;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/NotificationStation;->mAdapter:Lcom/android/settings/NotificationStation$NotificationHistoryAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 185
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    .line 136
    const-string v0, "onAttach(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/settings/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalFragment;->onAttach(Landroid/app/Activity;)V

    .line 138
    iput-object p1, p0, Lcom/android/settings/NotificationStation;->mContext:Landroid/content/Context;

    .line 139
    iget-object v0, p0, Lcom/android/settings/NotificationStation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    .line 140
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/NotificationStation;->mNoMan:Landroid/app/INotificationManager;

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/NotificationStation;->mNoMan:Landroid/app/INotificationManager;

    iget-object v1, p0, Lcom/android/settings/NotificationStation;->mListener:Landroid/service/notification/INotificationListener$Stub;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/settings/NotificationStation;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/app/INotificationManager;->registerListener(Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 154
    const-string v1, "onCreate(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/android/settings/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalFragment;->onCreate(Landroid/os/Bundle;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/NotificationStation;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 157
    .local v0, activity:Landroid/app/Activity;
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 487
    iput-object p1, p0, Lcom/android/settings/NotificationStation;->mInflater:Landroid/view/LayoutInflater;

    .line 489
    invoke-virtual {p0}, Lcom/android/settings/NotificationStation;->initView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 161
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->onDestroyView()V

    .line 162
    return-void
.end method

.method public onDetach()V
    .locals 3

    .prologue
    .line 502
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->onDetach()V

    .line 505
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/NotificationStation;->mNoMan:Landroid/app/INotificationManager;

    iget-object v1, p0, Lcom/android/settings/NotificationStation;->mListener:Landroid/service/notification/INotificationListener$Stub;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/app/INotificationManager;->unregisterListener(Landroid/service/notification/INotificationListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    :goto_0
    return-void

    .line 506
    :catch_0
    move-exception v0

    goto :goto_0
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
    .line 559
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/android/settings/NotificationStation;->mAdapter:Lcom/android/settings/NotificationStation$NotificationHistoryAdapter;

    invoke-virtual {v2, p3}, Lcom/android/settings/NotificationStation$NotificationHistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;

    .line 562
    .local v1, info:Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;
    :try_start_0
    iget-object v2, v1, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/settings/NotificationStation;->startApplicationDetailsActivity(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    :goto_0
    return-void

    .line 563
    :catch_0
    move-exception v0

    .line 564
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/settings/NotificationStation;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR: Cannot start activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    sget-object v2, Lcom/android/settings/NotificationStation;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 189
    const-string v0, "onPause()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->onPause()V

    .line 191
    iget-object v0, p0, Lcom/android/settings/NotificationStation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/NotificationStation;->mPackageReceiver:Lcom/android/settings/NotificationStation$PackageReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 192
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 196
    const-string v1, "onResume()"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/settings/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->onResume()V

    .line 201
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 202
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/android/settings/NotificationStation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/NotificationStation;->mPackageReceiver:Lcom/android/settings/NotificationStation$PackageReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 211
    iget-object v1, p0, Lcom/android/settings/NotificationStation;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/android/settings/NotificationStation;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v1, v3}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 216
    :cond_0
    return-void
.end method

.method public onResumeInBackground()V
    .locals 0

    .prologue
    .line 494
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->onResumeInBackground()V

    .line 496
    invoke-virtual {p0}, Lcom/android/settings/NotificationStation;->refresh()V

    .line 497
    return-void
.end method

.method protected refresh()V
    .locals 2

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/android/settings/NotificationStation;->getNonUiHandler()Landroid/os/Handler;

    move-result-object v0

    .line 574
    .local v0, handler:Landroid/os/Handler;
    iget-object v1, p0, Lcom/android/settings/NotificationStation;->mReloadNotificationsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 575
    iget-object v1, p0, Lcom/android/settings/NotificationStation;->mReloadNotificationsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 576
    return-void
.end method

.method protected reloadNotifications()V
    .locals 4

    .prologue
    .line 579
    invoke-direct {p0}, Lcom/android/settings/NotificationStation;->loadNotifications()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/NotificationStation;->mInfos:Ljava/util/List;

    .line 581
    invoke-virtual {p0}, Lcom/android/settings/NotificationStation;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    .line 583
    .local v0, handler:Landroid/os/Handler;
    iget-object v1, p0, Lcom/android/settings/NotificationStation;->mRefreshListRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 584
    iget-object v1, p0, Lcom/android/settings/NotificationStation;->mRefreshListRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 585
    return-void
.end method
