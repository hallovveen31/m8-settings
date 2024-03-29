.class public Lcom/android/settings/framework/database/sql/HtcSettingsSql;
.super Ljava/lang/Object;
.source "HtcSettingsSql.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/database/sql/HtcSettingsSql$GlobalTable;,
        Lcom/android/settings/framework/database/sql/HtcSettingsSql$SecureTable;,
        Lcom/android/settings/framework/database/sql/HtcSettingsSql$SystemTable;,
        Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static sGlobalTable:Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;

.field private static sSecureTable:Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;

.field private static sSystemTable:Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:SettingsProvider:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/database/sql/HtcSettingsSql;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/database/sql/HtcSettingsSql;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/database/sql/HtcSettingsSql;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/database/sql/HtcSettingsSql;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/settings/framework/database/sql/HtcSettingsSql;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/database/sql/HtcSettingsSql;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static close()V
    .locals 1

    sget-object v0, Lcom/android/settings/framework/database/sql/HtcSettingsSql;->sSystemTable:Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;

    #calls: Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;->close()V
    invoke-static {v0}, Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;->access$300(Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;)V

    sget-object v0, Lcom/android/settings/framework/database/sql/HtcSettingsSql;->sSecureTable:Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;

    #calls: Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;->close()V
    invoke-static {v0}, Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;->access$300(Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;)V

    sget-object v0, Lcom/android/settings/framework/database/sql/HtcSettingsSql;->sGlobalTable:Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;

    #calls: Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;->close()V
    invoke-static {v0}, Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;->access$300(Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;)V

    return-void
.end method

.method public static getGlobalTable()Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;
    .locals 2

    sget-object v0, Lcom/android/settings/framework/database/sql/HtcSettingsSql;->sGlobalTable:Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please invoke open(SQLiteDatabase) first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/android/settings/framework/database/sql/HtcSettingsSql;->sGlobalTable:Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;

    return-object v0
.end method

.method public static getSecureTable()Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;
    .locals 2

    sget-object v0, Lcom/android/settings/framework/database/sql/HtcSettingsSql;->sSecureTable:Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please invoke open(SQLiteDatabase) first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/android/settings/framework/database/sql/HtcSettingsSql;->sSecureTable:Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;

    return-object v0
.end method

.method public static getSystemTable()Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;
    .locals 2

    sget-object v0, Lcom/android/settings/framework/database/sql/HtcSettingsSql;->sSystemTable:Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please invoke open(SQLiteDatabase) first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/android/settings/framework/database/sql/HtcSettingsSql;->sSystemTable:Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/settings/framework/database/sql/HtcSettingsSql;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static open(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    new-instance v0, Lcom/android/settings/framework/database/sql/HtcSettingsSql$SystemTable;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/database/sql/HtcSettingsSql$SystemTable;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    sput-object v0, Lcom/android/settings/framework/database/sql/HtcSettingsSql;->sSystemTable:Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;

    new-instance v0, Lcom/android/settings/framework/database/sql/HtcSettingsSql$SecureTable;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/database/sql/HtcSettingsSql$SecureTable;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    sput-object v0, Lcom/android/settings/framework/database/sql/HtcSettingsSql;->sSecureTable:Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;

    new-instance v0, Lcom/android/settings/framework/database/sql/HtcSettingsSql$GlobalTable;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/database/sql/HtcSettingsSql$GlobalTable;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    sput-object v0, Lcom/android/settings/framework/database/sql/HtcSettingsSql;->sGlobalTable:Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;

    return-void
.end method
