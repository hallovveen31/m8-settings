.class public Lcom/android/settings/DateTimeFormatFromSIE;
.super Ljava/lang/Object;
.source "DateTimeFormatFromSIE.java"


# static fields
.field private static final CATEGORY_MODULE_APPLICATION_SETTINGS:Ljava/lang/String; = "application_Settings"

.field private static final CATEGORY_MODULE_SYSTEM_DEFAULT_TIME_FORMAT_SETTINGS:Ljava/lang/String; = "system_defaultTimeFormatSetting"

.field private static final CATEGORY_MODULE_SYSTEM_DEFAULT_TIME_FORMAT_SETTINGS_SHORT:Ljava/lang/String; = "system_defaultTimeFormatSettingShort"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG_FLAG:Z = false

.field private static final TAG:Ljava/lang/String; = "DateTimeFormatFromSIE"

.field private static final URI_STRING:Ljava/lang/String; = "content://customization_settings/SettingTable/"

.field private static mIsUseSIEDateFormatList:Z

.field private static mSIEDateFormats:[Ljava/lang/String;

.field private static mSIEDateFormatsShort:[Ljava/lang/String;

.field private static mSIEDefaultTimeFormatSetting:Ljava/lang/String;

.field private static mSIEDefaultTimeFormatSettingShort:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/DateTimeFormatFromSIE;->DEBUG_FLAG:Z

    .line 41
    sput-object v1, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDateFormats:[Ljava/lang/String;

    .line 42
    sput-object v1, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDateFormatsShort:[Ljava/lang/String;

    .line 43
    sput-object v1, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDefaultTimeFormatSetting:Ljava/lang/String;

    .line 44
    sput-object v1, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDefaultTimeFormatSettingShort:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/DateTimeFormatFromSIE;->mIsUseSIEDateFormatList:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static SIELogMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "sieTag"
    .parameter "sieLog"

    .prologue
    .line 283
    sget-boolean v0, Lcom/android/settings/DateTimeFormatFromSIE;->DEBUG_FLAG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sie> \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_0
    return-void
.end method

.method private static getDateFormatListBySIE(Landroid/content/Context;)[Ljava/lang/String;
    .locals 19
    .parameter "context"

    .prologue
    .line 149
    sget-boolean v3, Lcom/android/settings/DateTimeFormatFromSIE;->DEBUG_FLAG:Z

    if-eqz v3, :cond_0

    const-string v3, "DateTimeFormatFromSIE"

    const-string v4, "getDateFormatListBySIE: get date format list from SIE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    const/4 v12, 0x0

    .line 152
    .local v12, dateFormatList:[Ljava/lang/String;
    const/4 v10, 0x0

    .line 153
    .local v10, customizeData:[B
    const/4 v9, 0x0

    .line 154
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v3, "content://customization_settings/SettingTable/application_Settings"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 155
    .local v2, uri:Landroid/net/Uri;
    sget-boolean v3, Lcom/android/settings/DateTimeFormatFromSIE;->DEBUG_FLAG:Z

    if-eqz v3, :cond_1

    const-string v3, "DateTimeFormatFromSIE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDateFormatListBySIE: SIE customization uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 157
    .local v8, cr:Landroid/content/ContentResolver;
    invoke-virtual {v8, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 159
    .local v1, cpc:Landroid/content/ContentProviderClient;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 161
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 162
    const-string v3, "value"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    .line 167
    :cond_2
    if-eqz v9, :cond_3

    .line 168
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 169
    const/4 v9, 0x0

    .line 171
    :cond_3
    if-eqz v1, :cond_4

    .line 172
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 173
    const/4 v1, 0x0

    .line 177
    :cond_4
    :goto_0
    if-eqz v10, :cond_c

    .line 178
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v17

    .line 179
    .local v17, parcel:Landroid/os/Parcel;
    const/4 v3, 0x0

    array-length v4, v10

    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v3, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 180
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 181
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 182
    .local v7, bundle:Landroid/os/Bundle;
    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 184
    const-string v3, "date_format_list"

    invoke-virtual {v7, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v14

    .line 185
    .local v14, functionBundle:Landroid/os/Bundle;
    if-eqz v14, :cond_b

    .line 186
    invoke-virtual {v14}, Landroid/os/Bundle;->size()I

    move-result v18

    .line 187
    .local v18, size:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1
    move/from16 v0, v18

    if-ge v15, v0, :cond_9

    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "plenty_set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v15, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 189
    .local v16, key:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    .line 190
    .local v11, dateFormat:Landroid/os/Bundle;
    if-eqz v11, :cond_a

    .line 191
    const/4 v3, 0x6

    new-array v12, v3, [Ljava/lang/String;

    .line 192
    const/4 v3, 0x0

    const-string v4, "date_format1"

    const-string v5, ""

    invoke-static {v11, v4, v5}, Lcom/android/settings/DateTimeFormatFromSIE;->getStringValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v3

    .line 193
    const/4 v3, 0x1

    const-string v4, "date_format2"

    const-string v5, ""

    invoke-static {v11, v4, v5}, Lcom/android/settings/DateTimeFormatFromSIE;->getStringValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v3

    .line 194
    const/4 v3, 0x2

    const-string v4, "date_format3"

    const-string v5, ""

    invoke-static {v11, v4, v5}, Lcom/android/settings/DateTimeFormatFromSIE;->getStringValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v3

    .line 195
    const/4 v3, 0x3

    const-string v4, "date_format4"

    const-string v5, ""

    invoke-static {v11, v4, v5}, Lcom/android/settings/DateTimeFormatFromSIE;->getStringValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v3

    .line 196
    const/4 v3, 0x4

    const-string v4, "date_format5"

    const-string v5, ""

    invoke-static {v11, v4, v5}, Lcom/android/settings/DateTimeFormatFromSIE;->getStringValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v3

    .line 197
    const/4 v3, 0x5

    const-string v4, "date_format6"

    const-string v5, ""

    invoke-static {v11, v4, v5}, Lcom/android/settings/DateTimeFormatFromSIE;->getStringValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v3

    .line 198
    const-string v3, "DateTimeFormatFromSIE"

    const-string v4, "Date format list is read from SIE"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 187
    :cond_5
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 164
    .end local v7           #bundle:Landroid/os/Bundle;
    .end local v11           #dateFormat:Landroid/os/Bundle;
    .end local v14           #functionBundle:Landroid/os/Bundle;
    .end local v15           #i:I
    .end local v16           #key:Ljava/lang/String;
    .end local v17           #parcel:Landroid/os/Parcel;
    .end local v18           #size:I
    :catch_0
    move-exception v13

    .line 165
    .local v13, e:Ljava/lang/Exception;
    :try_start_3
    const-string v3, "DateTimeFormatFromSIE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDateFormatListBySIE: query failed e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 167
    if-eqz v9, :cond_6

    .line 168
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 169
    const/4 v9, 0x0

    .line 171
    :cond_6
    if-eqz v1, :cond_4

    .line 172
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 173
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 167
    .end local v13           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v9, :cond_7

    .line 168
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 169
    const/4 v9, 0x0

    .line 171
    :cond_7
    if-eqz v1, :cond_8

    .line 172
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 173
    const/4 v1, 0x0

    :cond_8
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 209
    .end local v1           #cpc:Landroid/content/ContentProviderClient;
    .end local v2           #uri:Landroid/net/Uri;
    .end local v8           #cr:Landroid/content/ContentResolver;
    :catch_1
    move-exception v13

    .line 210
    .restart local v13       #e:Ljava/lang/Exception;
    const-string v3, "DateTimeFormatFromSIE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDateFormatListBySIE: get date format list failed e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .end local v13           #e:Ljava/lang/Exception;
    :cond_9
    :goto_3
    return-object v12

    .line 200
    .restart local v1       #cpc:Landroid/content/ContentProviderClient;
    .restart local v2       #uri:Landroid/net/Uri;
    .restart local v7       #bundle:Landroid/os/Bundle;
    .restart local v8       #cr:Landroid/content/ContentResolver;
    .restart local v11       #dateFormat:Landroid/os/Bundle;
    .restart local v14       #functionBundle:Landroid/os/Bundle;
    .restart local v15       #i:I
    .restart local v16       #key:Ljava/lang/String;
    .restart local v17       #parcel:Landroid/os/Parcel;
    .restart local v18       #size:I
    :cond_a
    :try_start_5
    sget-boolean v3, Lcom/android/settings/DateTimeFormatFromSIE;->DEBUG_FLAG:Z

    if-eqz v3, :cond_5

    const-string v3, "DateTimeFormatFromSIE"

    const-string v4, "getDateFormatListBySIE: no plenty_set attribute"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 204
    .end local v11           #dateFormat:Landroid/os/Bundle;
    .end local v15           #i:I
    .end local v16           #key:Ljava/lang/String;
    .end local v18           #size:I
    :cond_b
    sget-boolean v3, Lcom/android/settings/DateTimeFormatFromSIE;->DEBUG_FLAG:Z

    if-eqz v3, :cond_9

    const-string v3, "DateTimeFormatFromSIE"

    const-string v4, "getDateFormatListBySIE: no date_format_list attribute"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 207
    .end local v7           #bundle:Landroid/os/Bundle;
    .end local v14           #functionBundle:Landroid/os/Bundle;
    .end local v17           #parcel:Landroid/os/Parcel;
    :cond_c
    const-string v3, "DateTimeFormatFromSIE"

    const-string v4, "Date format list is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3
.end method

.method private static getDateFormatListShortBySIE(Landroid/content/Context;)[Ljava/lang/String;
    .locals 19
    .parameter "context"

    .prologue
    .line 216
    sget-boolean v3, Lcom/android/settings/DateTimeFormatFromSIE;->DEBUG_FLAG:Z

    if-eqz v3, :cond_0

    const-string v3, "DateTimeFormatFromSIE"

    const-string v4, "getDateFormatListShortBySIE: get date format list from SIE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    const/4 v12, 0x0

    .line 219
    .local v12, dateFormatListShort:[Ljava/lang/String;
    const/4 v10, 0x0

    .line 220
    .local v10, customizeData:[B
    const/4 v9, 0x0

    .line 221
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v3, "content://customization_settings/SettingTable/application_Settings"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 222
    .local v2, uri:Landroid/net/Uri;
    sget-boolean v3, Lcom/android/settings/DateTimeFormatFromSIE;->DEBUG_FLAG:Z

    if-eqz v3, :cond_1

    const-string v3, "DateTimeFormatFromSIE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDateFormatListShortBySIE: SIE customization uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 224
    .local v8, cr:Landroid/content/ContentResolver;
    invoke-virtual {v8, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 226
    .local v1, cpc:Landroid/content/ContentProviderClient;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 228
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 229
    const-string v3, "value"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    .line 234
    :cond_2
    if-eqz v9, :cond_3

    .line 235
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 236
    const/4 v9, 0x0

    .line 238
    :cond_3
    if-eqz v1, :cond_4

    .line 239
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 240
    const/4 v1, 0x0

    .line 244
    :cond_4
    :goto_0
    if-eqz v10, :cond_c

    .line 245
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v17

    .line 246
    .local v17, parcel:Landroid/os/Parcel;
    const/4 v3, 0x0

    array-length v4, v10

    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v3, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 247
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 248
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 249
    .local v7, bundle:Landroid/os/Bundle;
    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 251
    const-string v3, "date_format_list_short"

    invoke-virtual {v7, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v14

    .line 252
    .local v14, functionBundle:Landroid/os/Bundle;
    if-eqz v14, :cond_b

    .line 253
    invoke-virtual {v14}, Landroid/os/Bundle;->size()I

    move-result v18

    .line 254
    .local v18, size:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1
    move/from16 v0, v18

    if-ge v15, v0, :cond_9

    .line 255
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "plenty_set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v15, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 256
    .local v16, key:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    .line 257
    .local v11, dateFormat:Landroid/os/Bundle;
    if-eqz v11, :cond_a

    .line 258
    const/4 v3, 0x6

    new-array v12, v3, [Ljava/lang/String;

    .line 259
    const/4 v3, 0x0

    const-string v4, "date_format_short1"

    const-string v5, ""

    invoke-static {v11, v4, v5}, Lcom/android/settings/DateTimeFormatFromSIE;->getStringValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v3

    .line 260
    const/4 v3, 0x1

    const-string v4, "date_format_short2"

    const-string v5, ""

    invoke-static {v11, v4, v5}, Lcom/android/settings/DateTimeFormatFromSIE;->getStringValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v3

    .line 261
    const/4 v3, 0x2

    const-string v4, "date_format_short3"

    const-string v5, ""

    invoke-static {v11, v4, v5}, Lcom/android/settings/DateTimeFormatFromSIE;->getStringValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v3

    .line 262
    const/4 v3, 0x3

    const-string v4, "date_format_short4"

    const-string v5, ""

    invoke-static {v11, v4, v5}, Lcom/android/settings/DateTimeFormatFromSIE;->getStringValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v3

    .line 263
    const/4 v3, 0x4

    const-string v4, "date_format_short5"

    const-string v5, ""

    invoke-static {v11, v4, v5}, Lcom/android/settings/DateTimeFormatFromSIE;->getStringValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v3

    .line 264
    const/4 v3, 0x5

    const-string v4, "date_format_short6"

    const-string v5, ""

    invoke-static {v11, v4, v5}, Lcom/android/settings/DateTimeFormatFromSIE;->getStringValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v3

    .line 265
    const-string v3, "DateTimeFormatFromSIE"

    const-string v4, "Date format list short is read from SIE"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 254
    :cond_5
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 231
    .end local v7           #bundle:Landroid/os/Bundle;
    .end local v11           #dateFormat:Landroid/os/Bundle;
    .end local v14           #functionBundle:Landroid/os/Bundle;
    .end local v15           #i:I
    .end local v16           #key:Ljava/lang/String;
    .end local v17           #parcel:Landroid/os/Parcel;
    .end local v18           #size:I
    :catch_0
    move-exception v13

    .line 232
    .local v13, e:Ljava/lang/Exception;
    :try_start_3
    const-string v3, "DateTimeFormatFromSIE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDateFormatListShortBySIE: query failed e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 234
    if-eqz v9, :cond_6

    .line 235
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 236
    const/4 v9, 0x0

    .line 238
    :cond_6
    if-eqz v1, :cond_4

    .line 239
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 240
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 234
    .end local v13           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v9, :cond_7

    .line 235
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 236
    const/4 v9, 0x0

    .line 238
    :cond_7
    if-eqz v1, :cond_8

    .line 239
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 240
    const/4 v1, 0x0

    :cond_8
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 276
    .end local v1           #cpc:Landroid/content/ContentProviderClient;
    .end local v2           #uri:Landroid/net/Uri;
    .end local v8           #cr:Landroid/content/ContentResolver;
    :catch_1
    move-exception v13

    .line 277
    .restart local v13       #e:Ljava/lang/Exception;
    const-string v3, "DateTimeFormatFromSIE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDateFormatListShortBySIE: get date format list failed e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    .end local v13           #e:Ljava/lang/Exception;
    :cond_9
    :goto_3
    return-object v12

    .line 267
    .restart local v1       #cpc:Landroid/content/ContentProviderClient;
    .restart local v2       #uri:Landroid/net/Uri;
    .restart local v7       #bundle:Landroid/os/Bundle;
    .restart local v8       #cr:Landroid/content/ContentResolver;
    .restart local v11       #dateFormat:Landroid/os/Bundle;
    .restart local v14       #functionBundle:Landroid/os/Bundle;
    .restart local v15       #i:I
    .restart local v16       #key:Ljava/lang/String;
    .restart local v17       #parcel:Landroid/os/Parcel;
    .restart local v18       #size:I
    :cond_a
    :try_start_5
    sget-boolean v3, Lcom/android/settings/DateTimeFormatFromSIE;->DEBUG_FLAG:Z

    if-eqz v3, :cond_5

    const-string v3, "DateTimeFormatFromSIE"

    const-string v4, "getDateFormatListShortBySIE: no plenty_set attribute"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 271
    .end local v11           #dateFormat:Landroid/os/Bundle;
    .end local v15           #i:I
    .end local v16           #key:Ljava/lang/String;
    .end local v18           #size:I
    :cond_b
    sget-boolean v3, Lcom/android/settings/DateTimeFormatFromSIE;->DEBUG_FLAG:Z

    if-eqz v3, :cond_9

    const-string v3, "DateTimeFormatFromSIE"

    const-string v4, "getDateFormatListShortBySIE: no date_format_list_short attribute"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 274
    .end local v7           #bundle:Landroid/os/Bundle;
    .end local v14           #functionBundle:Landroid/os/Bundle;
    .end local v17           #parcel:Landroid/os/Parcel;
    :cond_c
    const-string v3, "DateTimeFormatFromSIE"

    const-string v4, "Date format list short is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3
.end method

.method private static getDefaultTimeFormatSettingBySIE(Landroid/content/Context;)Ljava/lang/String;
    .locals 14
    .parameter "context"

    .prologue
    .line 53
    sget-boolean v2, Lcom/android/settings/DateTimeFormatFromSIE;->DEBUG_FLAG:Z

    if-eqz v2, :cond_0

    const-string v2, "DateTimeFormatFromSIE"

    const-string v3, "getDefaultTimeFormatSettingBySIE: get default setting from SIE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    const/4 v10, 0x0

    .line 56
    .local v10, defaultTimeFormat:Ljava/lang/String;
    const/4 v9, 0x0

    .line 57
    .local v9, customizeData:[B
    const/4 v8, 0x0

    .line 58
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v2, "content://customization_settings/SettingTable/system_defaultTimeFormatSetting"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 59
    .local v1, uri:Landroid/net/Uri;
    sget-boolean v2, Lcom/android/settings/DateTimeFormatFromSIE;->DEBUG_FLAG:Z

    if-eqz v2, :cond_1

    const-string v2, "DateTimeFormatFromSIE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultTimeFormatSettingBySIE: SIE customization uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 61
    .local v7, cr:Landroid/content/ContentResolver;
    invoke-virtual {v7, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 63
    .local v0, cpc:Landroid/content/ContentProviderClient;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 65
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 66
    const-string v2, "value"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    .line 71
    :cond_2
    if-eqz v8, :cond_3

    .line 72
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 73
    const/4 v8, 0x0

    .line 75
    :cond_3
    if-eqz v0, :cond_4

    .line 76
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 77
    const/4 v0, 0x0

    .line 81
    :cond_4
    :goto_0
    if-eqz v9, :cond_9

    .line 82
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v13

    .line 83
    .local v13, parcel:Landroid/os/Parcel;
    const/4 v2, 0x0

    array-length v3, v9

    invoke-virtual {v13, v9, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 84
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 85
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 86
    .local v6, bundle:Landroid/os/Bundle;
    invoke-virtual {v6, v13}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 87
    const-string v12, "default"

    .line 88
    .local v12, key:Ljava/lang/String;
    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 89
    sget-boolean v2, Lcom/android/settings/DateTimeFormatFromSIE;->DEBUG_FLAG:Z

    if-eqz v2, :cond_5

    const-string v2, "DateTimeFormatFromSIE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultTimeFormatSettingBySIE: defaultTimeFormat = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_5
    const-string v2, "DateTimeFormatFromSIE"

    const-string v3, "Default time format setting is read from SIE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 97
    .end local v0           #cpc:Landroid/content/ContentProviderClient;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #bundle:Landroid/os/Bundle;
    .end local v7           #cr:Landroid/content/ContentResolver;
    .end local v12           #key:Ljava/lang/String;
    .end local v13           #parcel:Landroid/os/Parcel;
    :goto_1
    return-object v10

    .line 68
    .restart local v0       #cpc:Landroid/content/ContentProviderClient;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v7       #cr:Landroid/content/ContentResolver;
    :catch_0
    move-exception v11

    .line 69
    .local v11, e:Ljava/lang/Exception;
    :try_start_3
    const-string v2, "DateTimeFormatFromSIE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultTimeFormatSettingBySIE: query failed e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 71
    if-eqz v8, :cond_6

    .line 72
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 73
    const/4 v8, 0x0

    .line 75
    :cond_6
    if-eqz v0, :cond_4

    .line 76
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 77
    const/4 v0, 0x0

    goto :goto_0

    .line 71
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_7

    .line 72
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 73
    const/4 v8, 0x0

    .line 75
    :cond_7
    if-eqz v0, :cond_8

    .line 76
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 77
    const/4 v0, 0x0

    :cond_8
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 94
    .end local v0           #cpc:Landroid/content/ContentProviderClient;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v7           #cr:Landroid/content/ContentResolver;
    :catch_1
    move-exception v11

    .line 95
    .restart local v11       #e:Ljava/lang/Exception;
    const-string v2, "DateTimeFormatFromSIE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultTimeFormatSettingBySIE: get default setting failed e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 92
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v0       #cpc:Landroid/content/ContentProviderClient;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v7       #cr:Landroid/content/ContentResolver;
    :cond_9
    :try_start_5
    const-string v2, "DateTimeFormatFromSIE"

    const-string v3, "Default time format setting is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1
.end method

.method private static getDefaultTimeFormatSettingShortBySIE(Landroid/content/Context;)Ljava/lang/String;
    .locals 14
    .parameter "context"

    .prologue
    .line 101
    sget-boolean v2, Lcom/android/settings/DateTimeFormatFromSIE;->DEBUG_FLAG:Z

    if-eqz v2, :cond_0

    const-string v2, "DateTimeFormatFromSIE"

    const-string v3, "getDefaultTimeFormatSettingShortBySIE: get default setting from SIE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    const/4 v10, 0x0

    .line 104
    .local v10, defaultTimeFormatShort:Ljava/lang/String;
    const/4 v9, 0x0

    .line 105
    .local v9, customizeData:[B
    const/4 v8, 0x0

    .line 106
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v2, "content://customization_settings/SettingTable/system_defaultTimeFormatSettingShort"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 107
    .local v1, uri:Landroid/net/Uri;
    sget-boolean v2, Lcom/android/settings/DateTimeFormatFromSIE;->DEBUG_FLAG:Z

    if-eqz v2, :cond_1

    const-string v2, "DateTimeFormatFromSIE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultTimeFormatSettingShortBySIE: SIE customization uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 109
    .local v7, cr:Landroid/content/ContentResolver;
    invoke-virtual {v7, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 111
    .local v0, cpc:Landroid/content/ContentProviderClient;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 113
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 114
    const-string v2, "value"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    .line 119
    :cond_2
    if-eqz v8, :cond_3

    .line 120
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 121
    const/4 v8, 0x0

    .line 123
    :cond_3
    if-eqz v0, :cond_4

    .line 124
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 125
    const/4 v0, 0x0

    .line 129
    :cond_4
    :goto_0
    if-eqz v9, :cond_9

    .line 130
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v13

    .line 131
    .local v13, parcel:Landroid/os/Parcel;
    const/4 v2, 0x0

    array-length v3, v9

    invoke-virtual {v13, v9, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 132
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 133
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 134
    .local v6, bundle:Landroid/os/Bundle;
    invoke-virtual {v6, v13}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 135
    const-string v12, "default"

    .line 136
    .local v12, key:Ljava/lang/String;
    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 137
    sget-boolean v2, Lcom/android/settings/DateTimeFormatFromSIE;->DEBUG_FLAG:Z

    if-eqz v2, :cond_5

    const-string v2, "DateTimeFormatFromSIE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultTimeFormatSettingShortBySIE: defaultTimeFormatShort = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_5
    const-string v2, "DateTimeFormatFromSIE"

    const-string v3, "Default time format setting short is read from SIE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 145
    .end local v0           #cpc:Landroid/content/ContentProviderClient;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #bundle:Landroid/os/Bundle;
    .end local v7           #cr:Landroid/content/ContentResolver;
    .end local v12           #key:Ljava/lang/String;
    .end local v13           #parcel:Landroid/os/Parcel;
    :goto_1
    return-object v10

    .line 116
    .restart local v0       #cpc:Landroid/content/ContentProviderClient;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v7       #cr:Landroid/content/ContentResolver;
    :catch_0
    move-exception v11

    .line 117
    .local v11, e:Ljava/lang/Exception;
    :try_start_3
    const-string v2, "DateTimeFormatFromSIE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultTimeFormatSettingShortBySIE: query failed e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    if-eqz v8, :cond_6

    .line 120
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 121
    const/4 v8, 0x0

    .line 123
    :cond_6
    if-eqz v0, :cond_4

    .line 124
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 125
    const/4 v0, 0x0

    goto :goto_0

    .line 119
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_7

    .line 120
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 121
    const/4 v8, 0x0

    .line 123
    :cond_7
    if-eqz v0, :cond_8

    .line 124
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 125
    const/4 v0, 0x0

    :cond_8
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 142
    .end local v0           #cpc:Landroid/content/ContentProviderClient;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v7           #cr:Landroid/content/ContentResolver;
    :catch_1
    move-exception v11

    .line 143
    .restart local v11       #e:Ljava/lang/Exception;
    const-string v2, "DateTimeFormatFromSIE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultTimeFormatSettingShortBySIE: get default setting failed e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 140
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v0       #cpc:Landroid/content/ContentProviderClient;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v7       #cr:Landroid/content/ContentResolver;
    :cond_9
    :try_start_5
    const-string v2, "DateTimeFormatFromSIE"

    const-string v3, "Default time format setting short is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1
.end method

.method public static getSIEDateFormats()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    sget-object v0, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDateFormats:[Ljava/lang/String;

    return-object v0
.end method

.method public static getSIEDateFormatsShort()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    sget-object v0, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDateFormatsShort:[Ljava/lang/String;

    return-object v0
.end method

.method public static getSIEDefaultTimeFormatSetting()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    sget-object v0, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDefaultTimeFormatSetting:Ljava/lang/String;

    return-object v0
.end method

.method public static getSIEDefaultTimeFormatSettingShort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    sget-object v0, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDefaultTimeFormatSettingShort:Ljava/lang/String;

    return-object v0
.end method

.method private static getStringValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "bundle"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_0

    .end local p2
    :goto_0
    return-object p2

    .restart local p2
    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method public static initSIEDateFormat(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 287
    invoke-static {p0}, Lcom/android/settings/DateTimeFormatFromSIE;->getDateFormatListBySIE(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDateFormats:[Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 288
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDateFormats:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 289
    const-string v1, "CUST_DATE_FORMAT"

    sget-object v2, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDateFormats:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Lcom/android/settings/DateTimeFormatFromSIE;->SIELogMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 291
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDateFormats:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 292
    sget-boolean v1, Lcom/android/settings/DateTimeFormatFromSIE;->DEBUG_FLAG:Z

    if-eqz v1, :cond_1

    const-string v1, "DateTimeFormatFromSIE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSIEDateFormat: mSIEDateFormats["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDateFormats:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 295
    .end local v0           #i:I
    :cond_2
    invoke-static {p0}, Lcom/android/settings/DateTimeFormatFromSIE;->getDateFormatListShortBySIE(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDateFormatsShort:[Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 296
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    sget-object v1, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDateFormatsShort:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 297
    const-string v1, "CUST_DATE_FORMAT_SHORT"

    sget-object v2, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDateFormatsShort:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Lcom/android/settings/DateTimeFormatFromSIE;->SIELogMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 299
    :cond_3
    const/4 v0, 0x0

    :goto_3
    sget-object v1, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDateFormatsShort:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 300
    sget-boolean v1, Lcom/android/settings/DateTimeFormatFromSIE;->DEBUG_FLAG:Z

    if-eqz v1, :cond_4

    const-string v1, "DateTimeFormatFromSIE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSIEDateFormat: mSIEDateFormatsShort["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDateFormatsShort:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 303
    .end local v0           #i:I
    :cond_5
    invoke-static {p0}, Lcom/android/settings/DateTimeFormatFromSIE;->getDefaultTimeFormatSettingBySIE(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDefaultTimeFormatSetting:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 304
    sget-boolean v1, Lcom/android/settings/DateTimeFormatFromSIE;->DEBUG_FLAG:Z

    if-eqz v1, :cond_6

    const-string v1, "DateTimeFormatFromSIE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSIEDateFormat: mSIEDefaultTimeFormatSetting = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDefaultTimeFormatSetting:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_6
    invoke-static {p0}, Lcom/android/settings/DateTimeFormatFromSIE;->getDefaultTimeFormatSettingShortBySIE(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDefaultTimeFormatSettingShort:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 307
    sget-boolean v1, Lcom/android/settings/DateTimeFormatFromSIE;->DEBUG_FLAG:Z

    if-eqz v1, :cond_7

    const-string v1, "DateTimeFormatFromSIE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSIEDateFormat: mSIEDefaultTimeFormatSettingShort = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDefaultTimeFormatSettingShort:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_7
    sget-object v1, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDateFormats:[Ljava/lang/String;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDateFormatsShort:[Ljava/lang/String;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDefaultTimeFormatSetting:Ljava/lang/String;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDefaultTimeFormatSettingShort:Ljava/lang/String;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    :goto_4
    sput-boolean v1, Lcom/android/settings/DateTimeFormatFromSIE;->mIsUseSIEDateFormatList:Z

    .line 311
    sget-boolean v1, Lcom/android/settings/DateTimeFormatFromSIE;->DEBUG_FLAG:Z

    if-eqz v1, :cond_8

    const-string v1, "DateTimeFormatFromSIE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSIEDateFormat: mIsUseSIEDateFormatList = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/settings/DateTimeFormatFromSIE;->mIsUseSIEDateFormatList:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_8
    return-void

    .line 310
    :cond_9
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public static isUseSIEDateFormatList()Z
    .locals 1

    .prologue
    .line 331
    sget-boolean v0, Lcom/android/settings/DateTimeFormatFromSIE;->mIsUseSIEDateFormatList:Z

    return v0
.end method
