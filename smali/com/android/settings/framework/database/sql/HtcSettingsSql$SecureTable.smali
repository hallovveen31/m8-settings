.class final Lcom/android/settings/framework/database/sql/HtcSettingsSql$SecureTable;
.super Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;
.source "HtcSettingsSql.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/database/sql/HtcSettingsSql;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SecureTable"
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "secure"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method
