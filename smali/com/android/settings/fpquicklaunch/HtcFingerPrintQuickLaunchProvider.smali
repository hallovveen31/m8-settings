.class public final Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchProvider;
.super Landroid/content/ContentProvider;
.source "HtcFingerPrintQuickLaunchProvider.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.android.settings.provider.fpquicklaunch"

.field private static final FIELD_NAME:Ljava/lang/String; = "quick_launch_app"

.field private static final MATCHED_CODE:I = 0x1

.field private static final TABLE:Ljava/lang/String; = "quick_launch_table"

.field private static final mURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchProvider;->mURIMatcher:Landroid/content/UriMatcher;

    sget-object v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchProvider;->mURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.settings.provider.fpquicklaunch"

    const-string v2, "quick_launch_table"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const-class v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method private convertComponentNameFlattenStringToIntentUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getQuickLaunchAppCursor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/database/MatrixCursor;
    .locals 16

    const-string v13, "finger_print_quick_launch_shared_preferences"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getBasicAppNumber(Landroid/content/Context;)I

    move-result v3

    const/4 v12, 0x0

    const/4 v13, 0x1

    new-array v6, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object p3, v6, v13

    new-instance v4, Landroid/database/MatrixCursor;

    invoke-direct {v4, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-nez p2, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getFingerAndSelectionMap(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_3

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ge v11, v3, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getBasicApplications(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    aget-object v12, v2, v11

    :goto_1
    if-eqz v12, :cond_0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v4, v13}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getCustomApplications(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v1

    sub-int v13, v11, v3

    aget-object v12, v1, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchProvider;->convertComponentNameFlattenStringToIntentUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    :cond_2
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getSelection(Landroid/content/Context;I)I

    move-result v11

    if-ge v11, v3, :cond_4

    invoke-static/range {p1 .. p1}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getBasicApplications(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    aget-object v12, v2, v11

    :goto_2
    if-eqz v12, :cond_3

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v12, v13, v14

    invoke-virtual {v4, v13}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_3
    return-object v4

    :cond_4
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getCustomApplications(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v1

    sub-int v13, v11, v3

    aget-object v12, v1, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchProvider;->convertComponentNameFlattenStringToIntentUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_2
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchProvider;->TAG:Ljava/lang/String;

    const-string v1, "-onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    const/4 v5, 0x0

    sget-object v2, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchProvider;->mURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), UriId("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-object v1

    :pswitch_0
    if-nez p4, :cond_0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, p2, v5

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchProvider;->getQuickLaunchAppCursor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    aget-object v3, p4, v5

    aget-object v4, p2, v5

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchProvider;->getQuickLaunchAppCursor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
