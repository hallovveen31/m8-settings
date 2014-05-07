.class Lcom/android/settings/CdmaApnGroupSettings$2;
.super Ljava/lang/Thread;
.source "CdmaApnGroupSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/CdmaApnGroupSettings;->printAPNData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CdmaApnGroupSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/CdmaApnGroupSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1009
    iput-object p1, p0, Lcom/android/settings/CdmaApnGroupSettings$2;->this$0:Lcom/android/settings/CdmaApnGroupSettings;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v2, 0x0

    .line 1011
    const/4 v3, 0x0

    .line 1012
    .local v3, where:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1013
    .local v4, whereArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/CdmaApnGroupSettings$2;->this$0:Lcom/android/settings/CdmaApnGroupSettings;

    #calls: Lcom/android/settings/CdmaApnGroupSettings;->getOperatorNumeric()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/CdmaApnGroupSettings;->access$700(Lcom/android/settings/CdmaApnGroupSettings;)Ljava/lang/String;

    move-result-object v10

    .line 1015
    .local v10, numeric:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/CdmaApnGroupSettings$2;->this$0:Lcom/android/settings/CdmaApnGroupSettings;

    #getter for: Lcom/android/settings/CdmaApnGroupSettings;->mIsMVNO:Z
    invoke-static {v0}, Lcom/android/settings/CdmaApnGroupSettings;->access$500(Lcom/android/settings/CdmaApnGroupSettings;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1016
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND apn <> \'\' AND name <> \'\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1047
    :goto_0
    iget-object v0, p0, Lcom/android/settings/CdmaApnGroupSettings$2;->this$0:Lcom/android/settings/CdmaApnGroupSettings;

    invoke-virtual {v0}, Lcom/android/settings/CdmaApnGroupSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/wrap/android/provider/HtcWrapTelephony$CdmaCarriers;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1050
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 1051
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v8

    .line 1052
    .local v8, length:I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1053
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1056
    new-instance v12, Ljava/lang/StringBuilder;

    const/16 v0, 0x200

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1057
    .local v12, result:Ljava/lang/StringBuilder;
    const-string v0, "Cust_APN: "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-ge v7, v8, :cond_2

    .line 1059
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v9

    .line 1060
    .local v9, name:Ljava/lang/String;
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1061
    .local v13, value:Ljava/lang/String;
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1020
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #i:I
    .end local v8           #length:I
    .end local v9           #name:Ljava/lang/String;
    .end local v12           #result:Ljava/lang/StringBuilder;
    .end local v13           #value:Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/settings/CdmaApnGroupSettings$2;->this$0:Lcom/android/settings/CdmaApnGroupSettings;

    iget-boolean v0, v0, Lcom/android/settings/CdmaApnGroupSettings;->enterOperatorPicker:Z

    if-eqz v0, :cond_1

    .line 1021
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND operator is not null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1038
    :cond_1
    iget-object v0, p0, Lcom/android/settings/CdmaApnGroupSettings$2;->this$0:Lcom/android/settings/CdmaApnGroupSettings;

    invoke-virtual {v0}, Lcom/android/settings/CdmaApnGroupSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/settings/ApnSettings;->getMvnoOperator(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v11

    .line 1040
    .local v11, op:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND apn <> \'\' AND name <> \'\' AND operator = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1043
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .end local v4           #whereArgs:[Ljava/lang/String;
    const/4 v0, 0x0

    aput-object v11, v4, v0

    .restart local v4       #whereArgs:[Ljava/lang/String;
    goto/16 :goto_0

    .line 1066
    .end local v11           #op:Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v7       #i:I
    .restart local v8       #length:I
    .restart local v12       #result:Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/settings/CdmaApnGroupSettings;->Log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/CdmaApnGroupSettings;->access$800(Ljava/lang/String;)V

    .line 1067
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    .line 1069
    .end local v7           #i:I
    .end local v12           #result:Ljava/lang/StringBuilder;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1071
    .end local v8           #length:I
    :cond_4
    return-void
.end method
