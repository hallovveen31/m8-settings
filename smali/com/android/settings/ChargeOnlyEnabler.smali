.class public Lcom/android/settings/ChargeOnlyEnabler;
.super Ljava/lang/Object;
.source "ChargeOnlyEnabler.java"


# static fields
.field protected static final ChargeOnlyMode:Ljava/lang/String; = "ChargeOnly_Mode"

.field protected static final IsChargeOnlyOpening:Ljava/lang/String; = "is_charge_only_opening"

.field private static final MSG_DISABLED:I = 0x0

.field private static final MSG_ENABLED:I = 0x1

.field private static final MSG_TURNING:I = 0x2

.field protected static final NOTIFICATION_ID_CHARGE_ONLY:I = 0xbb8

.field protected static final NOTIFICATION_TAG:Ljava/lang/String; = "com.htc.settings.chargeonly"

.field private static final TAG:Ljava/lang/String; = "SmartNS_ChargeOnly_Enabler"

.field private static alive:Z

.field private static isChargeOnlyOpening:Z

.field private static pause:Landroid/os/ConditionVariable;


# instance fields
.field protected mChargeOnlyEnabler:Lcom/htc/preference/HtcSwitchPreference;

.field private mContext:Landroid/content/Context;

.field private mFilter:Landroid/content/IntentFilter;

.field private mHandler:Landroid/os/Handler;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field sp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    sput-boolean v1, Lcom/android/settings/ChargeOnlyEnabler;->alive:Z

    .line 60
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    sput-object v0, Lcom/android/settings/ChargeOnlyEnabler;->pause:Landroid/os/ConditionVariable;

    .line 63
    sput-boolean v1, Lcom/android/settings/ChargeOnlyEnabler;->isChargeOnlyOpening:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/preference/HtcSwitchPreference;)V
    .locals 3
    .parameter "context"
    .parameter "preference"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ChargeOnlyEnabler;->mFilter:Landroid/content/IntentFilter;

    .line 185
    new-instance v0, Lcom/android/settings/ChargeOnlyEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/settings/ChargeOnlyEnabler$2;-><init>(Lcom/android/settings/ChargeOnlyEnabler;)V

    iput-object v0, p0, Lcom/android/settings/ChargeOnlyEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 217
    new-instance v0, Lcom/android/settings/ChargeOnlyEnabler$3;

    invoke-direct {v0, p0}, Lcom/android/settings/ChargeOnlyEnabler$3;-><init>(Lcom/android/settings/ChargeOnlyEnabler;)V

    iput-object v0, p0, Lcom/android/settings/ChargeOnlyEnabler;->mHandler:Landroid/os/Handler;

    .line 70
    iput-object p1, p0, Lcom/android/settings/ChargeOnlyEnabler;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/android/settings/ChargeOnlyEnabler;->mChargeOnlyEnabler:Lcom/htc/preference/HtcSwitchPreference;

    .line 72
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ChargeOnlyEnabler;->mFilter:Landroid/content/IntentFilter;

    .line 73
    iget-object v0, p0, Lcom/android/settings/ChargeOnlyEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.settings.action.CHARGE_ONLY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/android/settings/ChargeOnlyEnabler;->mContext:Landroid/content/Context;

    const-string v1, "WirelessSettings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ChargeOnlyEnabler;->sp:Landroid/content/SharedPreferences;

    .line 76
    iget-object v0, p0, Lcom/android/settings/ChargeOnlyEnabler;->mChargeOnlyEnabler:Lcom/htc/preference/HtcSwitchPreference;

    new-instance v1, Lcom/android/settings/ChargeOnlyEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/settings/ChargeOnlyEnabler$1;-><init>(Lcom/android/settings/ChargeOnlyEnabler;)V

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcSwitchPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ChargeOnlyEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/ChargeOnlyEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Landroid/os/ConditionVariable;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/settings/ChargeOnlyEnabler;->pause:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/ChargeOnlyEnabler;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/ChargeOnlyEnabler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected static addNotification(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 249
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v4, p0}, Lcom/android/settings/ChargeOnlyEnabler;->buildNotificationView(ZLandroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x7f020201

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 258
    .local v1, notif:Landroid/app/Notification;
    iget v2, v1, Landroid/app/Notification;->flags:I

    const/high16 v3, -0x8000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 264
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 265
    .local v0, mNotificationManager:Landroid/app/NotificationManager;
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #mNotificationManager:Landroid/app/NotificationManager;
    check-cast v0, Landroid/app/NotificationManager;

    .line 266
    .restart local v0       #mNotificationManager:Landroid/app/NotificationManager;
    const-string v2, "com.htc.settings.chargeonly"

    const/16 v3, 0xbb8

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 267
    return-void
.end method

.method protected static buildNotificationView(ZLandroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 17
    .parameter "enable"
    .parameter "context"

    .prologue
    .line 271
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 272
    .local v9, startIntent:Landroid/content/Intent;
    const-string v14, "com.android.settings"

    const-string v15, "com.android.settings.Settings$TetherSettingsActivity"

    invoke-virtual {v9, v14, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const/high16 v14, 0x1000

    invoke-virtual {v9, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 277
    const/4 v14, 0x0

    const/high16 v15, 0x800

    move-object/from16 v0, p1

    invoke-static {v0, v14, v9, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 280
    .local v6, pendingIntent:Landroid/app/PendingIntent;
    new-instance v12, Landroid/content/Intent;

    const-string v14, "com.htc.settings.action.CHARGE_ONLY"

    invoke-direct {v12, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    .local v12, toggleIntent:Landroid/content/Intent;
    const-string v14, "enabled"

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 282
    const v8, 0x7f020201

    .line 283
    .local v8, resId:I
    const/high16 v14, 0x800

    move-object/from16 v0, p1

    invoke-static {v0, v8, v12, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 287
    .local v13, togglePendingIntent:Landroid/app/PendingIntent;
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v4

    .line 288
    .local v4, mThemeId:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->setTheme(I)V

    .line 290
    const-string v14, "SmartNS_ChargeOnly_Enabler"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getHtcThemeId = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    new-instance v7, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const v15, 0x7f0400ea

    invoke-direct {v7, v14, v15}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 294
    .local v7, remoteViews:Landroid/widget/RemoteViews;
    const v14, 0x7f0901e9

    invoke-virtual {v7, v14, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 295
    const v14, 0x7f0901eb

    const v15, 0x7f0c0554

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 296
    const v14, 0x7f0901ec

    const v15, 0x7f0c0556

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 299
    invoke-virtual {v7}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    .line 300
    .local v3, layoutId:I
    const-string v14, "layout_inflater"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 301
    .local v2, inflater:Landroid/view/LayoutInflater;
    const/4 v14, 0x0

    invoke-virtual {v2, v3, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    const v15, 0x7f0901eb

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 302
    .local v11, textTitle:Landroid/widget/TextView;
    const/4 v14, 0x0

    invoke-virtual {v2, v3, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    const v15, 0x7f0901ec

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 305
    .local v10, textSummary:Landroid/widget/TextView;
    invoke-virtual {v11}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 306
    .local v1, defTextColor:I
    const v14, 0x7f0901eb

    invoke-virtual {v7, v14, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 307
    invoke-virtual {v10}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 308
    const v14, 0x7f0901ec

    invoke-virtual {v7, v14, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 312
    if-eqz p0, :cond_0

    .line 314
    const v14, 0x2080020

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/settings/ChargeOnlyEnabler;->getMultipliedBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 315
    .local v5, mToggleBgBitmap:Landroid/graphics/Bitmap;
    const v14, 0x7f0901ee

    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 316
    const v14, 0x7f0901ee

    invoke-virtual {v7, v14, v5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 317
    const v14, 0x7f0901ef

    const v15, 0x208001d

    invoke-virtual {v7, v14, v15}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 326
    .end local v5           #mToggleBgBitmap:Landroid/graphics/Bitmap;
    :goto_0
    const v14, 0x7f0901ed

    invoke-virtual {v7, v14, v13}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 327
    const v14, 0x7f0901ea

    invoke-virtual {v7, v14, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 328
    const v14, 0x7f0901e9

    invoke-virtual {v7, v14, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 330
    return-object v7

    .line 319
    :cond_0
    const v14, 0x7f0901ee

    const/4 v15, 0x4

    invoke-virtual {v7, v14, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 320
    const v14, 0x7f0901ee

    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 321
    const v14, 0x7f0901ef

    const v15, 0x7f020048

    invoke-virtual {v7, v14, v15}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0
.end method

.method protected static cancelNotification(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 245
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 246
    .local v0, mNotificationManager:Landroid/app/NotificationManager;
    const-string v1, "com.htc.settings.chargeonly"

    const/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 247
    return-void
.end method

.method protected static enableAllUSB(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "apply"

    .prologue
    .line 365
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/ChargeOnlyEnabler$4;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/ChargeOnlyEnabler$4;-><init>(Landroid/content/Context;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 375
    return-void
.end method

.method public static getMultipliedBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "context"
    .parameter "resId"

    .prologue
    const/4 v9, 0x0

    .line 334
    if-nez p0, :cond_0

    .line 335
    const/4 v0, 0x0

    .line 349
    :goto_0
    return-object v0

    .line 338
    :cond_0
    invoke-static {p0}, Lcom/android/settings/ChargeOnlyEnabler;->getThemeOverlayColor(Landroid/content/Context;)I

    move-result v2

    .line 339
    .local v2, multiplyColor:I
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v2, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 341
    .local v4, porterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 342
    .local v3, paint:Landroid/graphics/Paint;
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 344
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 345
    .local v5, srcBmp:Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 346
    .local v0, bmp:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 347
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v1, v5, v9, v9, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static getThemeOverlayColor(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 354
    sget-object v2, Lcom/android/settings/R$styleable;->myStylable:[I

    invoke-virtual {p0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 355
    .local v1, ta:Landroid/content/res/TypedArray;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 356
    .local v0, overlayColor:I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 358
    const-string v2, "SmartNS_ChargeOnly_Enabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ThemeColor(overlay color) = 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    return v0
.end method

.method protected static isCharging(Landroid/content/Context;)Z
    .locals 12
    .parameter "context"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 379
    new-instance v2, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 380
    .local v2, ifilter:Landroid/content/IntentFilter;
    const-string v8, "com.htc.permission.APP_PLATFORM"

    invoke-virtual {p0, v11, v2, v8, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    .line 382
    .local v0, batteryStatus:Landroid/content/Intent;
    const-string v8, "status"

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 383
    .local v4, status:I
    if-eq v4, v10, :cond_0

    const/4 v8, 0x5

    if-ne v4, v8, :cond_1

    :cond_0
    move v3, v7

    .line 385
    .local v3, isCharging:Z
    :goto_0
    const-string v8, "plugged"

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 386
    .local v1, chargePlug:I
    if-ne v1, v10, :cond_2

    move v5, v7

    .line 388
    .local v5, usbType:Z
    :goto_1
    const-string v8, "SmartNS_ChargeOnly_Enabler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "battery status:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "plug type:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    if-eqz v3, :cond_3

    if-eqz v5, :cond_3

    :goto_2
    return v7

    .end local v1           #chargePlug:I
    .end local v3           #isCharging:Z
    .end local v5           #usbType:Z
    :cond_1
    move v3, v6

    .line 383
    goto :goto_0

    .restart local v1       #chargePlug:I
    .restart local v3       #isCharging:Z
    :cond_2
    move v5, v6

    .line 386
    goto :goto_1

    .restart local v5       #usbType:Z
    :cond_3
    move v7, v6

    .line 390
    goto :goto_2
.end method


# virtual methods
.method public pause()V
    .locals 3

    .prologue
    .line 169
    const-string v1, "SmartNS_ChargeOnly_Enabler"

    const-string v2, "pause()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v1, p0, Lcom/android/settings/ChargeOnlyEnabler;->mChargeOnlyEnabler:Lcom/htc/preference/HtcSwitchPreference;

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/android/settings/ChargeOnlyEnabler;->mChargeOnlyEnabler:Lcom/htc/preference/HtcSwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcSwitchPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 174
    :cond_0
    sget-boolean v1, Lcom/android/settings/ChargeOnlyEnabler;->alive:Z

    if-eqz v1, :cond_1

    .line 176
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/ChargeOnlyEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/ChargeOnlyEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :cond_1
    :goto_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/settings/ChargeOnlyEnabler;->alive:Z

    .line 182
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public resume()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 146
    const-string v1, "SmartNS_ChargeOnly_Enabler"

    const-string v2, "resume()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    sput-boolean v7, Lcom/android/settings/ChargeOnlyEnabler;->alive:Z

    .line 149
    iget-object v1, p0, Lcom/android/settings/ChargeOnlyEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/ChargeOnlyEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/ChargeOnlyEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v4, "com.htc.permission.APP_PLATFORM"

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 151
    iget-object v1, p0, Lcom/android/settings/ChargeOnlyEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ChargeOnly_Mode"

    invoke-static {v1, v2, v6}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 153
    .local v0, defaultValue:Z
    if-eqz v0, :cond_1

    .line 154
    iget-object v1, p0, Lcom/android/settings/ChargeOnlyEnabler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 158
    :goto_0
    const-string v1, "SmartNS_ChargeOnly_Enabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Charge Only mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v1, p0, Lcom/android/settings/ChargeOnlyEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v2, "is_charge_only_opening"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/ChargeOnlyEnabler;->isChargeOnlyOpening:Z

    .line 161
    const-string v1, "SmartNS_ChargeOnly_Enabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "opening:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/settings/ChargeOnlyEnabler;->isChargeOnlyOpening:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    sget-boolean v1, Lcom/android/settings/ChargeOnlyEnabler;->isChargeOnlyOpening:Z

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/android/settings/ChargeOnlyEnabler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 165
    :cond_0
    return-void

    .line 156
    :cond_1
    iget-object v1, p0, Lcom/android/settings/ChargeOnlyEnabler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
