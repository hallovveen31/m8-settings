.class final Lcom/android/settings/framework/database/sql/HtcSettingsSql$GlobalTable;
.super Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;
.source "HtcSettingsSql.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/database/sql/HtcSettingsSql;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GlobalTable"
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 253
    const-string v0, "global"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/database/sql/HtcSettingsSql$BaseTable;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 254
    return-void
.end method
