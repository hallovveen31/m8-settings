.class public Lcom/android/settings/wifi/WISPrProvider;
.super Landroid/content/ContentProvider;
.source "WISPrProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WISPrProvider$DatabaseWrapper;,
        Lcom/android/settings/wifi/WISPrProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final ACCOUNT:I = 0x1

.field private static final ACCOUNT_ID:I = 0x2

.field private static final DATABASE_VERSION:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WISPrProvider"

.field private static final sAccountColumns:[Ljava/lang/String; = null

.field private static final sDatabaseName:Ljava/lang/String; = "wispr.db"

.field static sTheOne:Lcom/android/settings/wifi/WISPrProvider;

.field private static final sURIMatcher:Landroid/content/UriMatcher;

.field public static final sWISPrAccountURI:Landroid/net/Uri;


# instance fields
.field private mDb:Lcom/android/settings/wifi/WISPrProvider$DatabaseWrapper;

.field private mFileInstallPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const-string v0, "content://wispr/account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WISPrProvider;->sWISPrAccountURI:Landroid/net/Uri;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const-string v1, "nickname"

    aput-object v1, v0, v3

    const-string v1, "loginname"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "password"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "priority"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "connectedssid"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "state"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "auto"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "notify"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "retries"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "security"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/wifi/WISPrProvider;->sAccountColumns:[Ljava/lang/String;

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/settings/wifi/WISPrProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v0, Lcom/android/settings/wifi/WISPrProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "wispr"

    const-string v2, "account"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/settings/wifi/WISPrProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "wispr"

    const-string v2, "account/#"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10

    const/4 v9, 0x0

    sget-object v5, Lcom/android/settings/wifi/WISPrProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v0, 0x0

    packed-switch v2, :pswitch_data_0

    const/4 v5, 0x0

    :goto_0
    return v5

    :pswitch_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/settings/wifi/WISPrProvider;->mDb:Lcom/android/settings/wifi/WISPrProvider$DatabaseWrapper;

    const-string v6, "account"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v9}, Lcom/android/settings/wifi/WISPrProvider$DatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v1, p1, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    sget-object v5, Lcom/android/settings/wifi/WISPrProvider;->sWISPrAccountURI:Landroid/net/Uri;

    invoke-virtual {v1, v5, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_0
    move v5, v0

    goto :goto_0

    :pswitch_1
    iget-object v5, p0, Lcom/android/settings/wifi/WISPrProvider;->mDb:Lcom/android/settings/wifi/WISPrProvider$DatabaseWrapper;

    const-string v6, "account"

    invoke-virtual {v5, v6, p2, v9}, Lcom/android/settings/wifi/WISPrProvider$DatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    sget-object v5, Lcom/android/settings/wifi/WISPrProvider;->sWISPrAccountURI:Landroid/net/Uri;

    invoke-virtual {v1, v5, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    invoke-virtual {v1, p1, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_1
    move v5, v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9

    const/4 v5, 0x0

    sget-object v6, Lcom/android/settings/wifi/WISPrProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v6, 0x1

    if-ne v1, v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/wifi/WISPrProvider;->mDb:Lcom/android/settings/wifi/WISPrProvider$DatabaseWrapper;

    const-string v7, "account"

    const-string v8, "nickname"

    invoke-virtual {v6, v7, v8, p2}, Lcom/android/settings/wifi/WISPrProvider$DatabaseWrapper;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-lez v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://wifi/wispr/account"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    sget-object v6, Lcom/android/settings/wifi/WISPrProvider;->sWISPrAccountURI:Landroid/net/Uri;

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :goto_0
    return-object v2

    :cond_0
    move-object v2, v5

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object p0, Lcom/android/settings/wifi/WISPrProvider;->sTheOne:Lcom/android/settings/wifi/WISPrProvider;

    new-instance v1, Lcom/android/settings/wifi/WISPrProvider$DatabaseWrapper;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/wifi/WISPrProvider$DatabaseWrapper;-><init>(Lcom/android/settings/wifi/WISPrProvider;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WISPrProvider;->mDb:Lcom/android/settings/wifi/WISPrProvider$DatabaseWrapper;

    iget-object v1, p0, Lcom/android/settings/wifi/WISPrProvider;->mDb:Lcom/android/settings/wifi/WISPrProvider$DatabaseWrapper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12

    sget-object v0, Lcom/android/settings/wifi/WISPrProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    const-string v1, "account"

    const/4 v10, 0x0

    new-instance v11, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v11}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    packed-switch v9, :pswitch_data_0

    :goto_0
    :pswitch_0
    sget-object v10, Lcom/android/settings/wifi/WISPrProvider;->sWISPrAccountURI:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/settings/wifi/WISPrProvider;->mDb:Lcom/android/settings/wifi/WISPrProvider$DatabaseWrapper;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/wifi/WISPrProvider$DatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-interface {v8, v0, v10}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v8

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9

    sget-object v5, Lcom/android/settings/wifi/WISPrProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/settings/wifi/WISPrProvider;->mDb:Lcom/android/settings/wifi/WISPrProvider$DatabaseWrapper;

    const-string v6, "account"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, p2, v7, p4}, Lcom/android/settings/wifi/WISPrProvider$DatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v5, 0x0

    invoke-virtual {v1, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
