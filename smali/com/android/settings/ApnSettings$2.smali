.class Lcom/android/settings/ApnSettings$2;
.super Ljava/lang/Thread;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ApnSettings;->printAPNData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/ApnSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1139
    iput-object p1, p0, Lcom/android/settings/ApnSettings$2;->this$0:Lcom/android/settings/ApnSettings;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v2, 0x0

    .line 1141
    const/4 v3, 0x0

    .line 1142
    .local v3, where:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1143
    .local v4, whereArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/ApnSettings$2;->this$0:Lcom/android/settings/ApnSettings;

    #calls: Lcom/android/settings/ApnSettings;->getOperatorNumeric()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/ApnSettings;->access$600(Lcom/android/settings/ApnSettings;)Ljava/lang/String;

    move-result-object v10

    .line 1145
    .local v10, numeric:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/ApnSettings$2;->this$0:Lcom/android/settings/ApnSettings;

    #getter for: Lcom/android/settings/ApnSettings;->mIsMVNO:Z
    invoke-static {v0}, Lcom/android/settings/ApnSettings;->access$500(Lcom/android/settings/ApnSettings;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1146
    sget-boolean v0, Lcom/android/settings/ApnSettings;->FLAG_KDDI_APN_FEATURE:Z

    if-eqz v0, :cond_0

    .line 1147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND name <> \'\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1187
    :goto_0
    iget-object v0, p0, Lcom/android/settings/ApnSettings$2;->this$0:Lcom/android/settings/ApnSettings;

    invoke-virtual {v0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnSettings$2;->this$0:Lcom/android/settings/ApnSettings;

    #getter for: Lcom/android/settings/ApnSettings;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/settings/ApnSettings;->access$900(Lcom/android/settings/ApnSettings;)Landroid/net/Uri;

    move-result-object v1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1191
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_6

    .line 1192
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v8

    .line 1193
    .local v8, length:I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1194
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1197
    new-instance v12, Ljava/lang/StringBuilder;

    const/16 v0, 0x200

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1198
    .local v12, result:Ljava/lang/StringBuilder;
    const-string v0, "Cust_APN: "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1199
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-ge v7, v8, :cond_4

    .line 1200
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v9

    .line 1201
    .local v9, name:Ljava/lang/String;
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1202
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

    .line 1199
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1150
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #i:I
    .end local v8           #length:I
    .end local v9           #name:Ljava/lang/String;
    .end local v12           #result:Ljava/lang/StringBuilder;
    .end local v13           #value:Ljava/lang/String;
    :cond_0
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

    goto :goto_0

    .line 1154
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ApnSettings$2;->this$0:Lcom/android/settings/ApnSettings;

    iget-boolean v0, v0, Lcom/android/settings/ApnSettings;->enterOperatorPicker:Z

    if-eqz v0, :cond_2

    .line 1155
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

    goto/16 :goto_0

    .line 1172
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ApnSettings$2;->this$0:Lcom/android/settings/ApnSettings;

    invoke-virtual {v0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnSettings$2;->this$0:Lcom/android/settings/ApnSettings;

    #getter for: Lcom/android/settings/ApnSettings;->mCurrentPhoneType:I
    invoke-static {v1}, Lcom/android/settings/ApnSettings;->access$700(Lcom/android/settings/ApnSettings;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/ApnSettings;->getMvnoOperator(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v11

    .line 1174
    .local v11, op:Ljava/lang/String;
    sget-boolean v0, Lcom/android/settings/ApnSettings;->FLAG_KDDI_APN_FEATURE:Z

    if-eqz v0, :cond_3

    .line 1175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND name <> \'\' AND operator = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1183
    :goto_3
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .end local v4           #whereArgs:[Ljava/lang/String;
    const/4 v0, 0x0

    aput-object v11, v4, v0

    .restart local v4       #whereArgs:[Ljava/lang/String;
    goto/16 :goto_0

    .line 1179
    :cond_3
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

    goto :goto_3

    .line 1207
    .end local v11           #op:Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v7       #i:I
    .restart local v8       #length:I
    .restart local v12       #result:Ljava/lang/StringBuilder;
    :cond_4
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/settings/ApnSettings;->Log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/ApnSettings;->access$1000(Ljava/lang/String;)V

    .line 1208
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    .line 1210
    .end local v7           #i:I
    .end local v12           #result:Ljava/lang/StringBuilder;
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1212
    .end local v8           #length:I
    :cond_6
    return-void
.end method
