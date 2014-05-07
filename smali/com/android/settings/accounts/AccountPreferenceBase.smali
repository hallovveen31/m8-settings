.class Lcom/android/settings/accounts/AccountPreferenceBase;
.super Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;
.source "AccountPreferenceBase.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# static fields
.field public static final ACCOUNT_TYPES_FILTER_KEY:Ljava/lang/String; = "account_types"

.field public static final AUTHORITIES_FILTER_KEY:Ljava/lang/String; = "authorities"

.field protected static final TAG:Ljava/lang/String; = "AccountSettings"


# instance fields
.field private final HTCTWITTERTYPE:Ljava/lang/String;

.field private mAccountTypeToAuthorities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

.field private mDateFormat:Ljava/text/DateFormat;

.field private final mHandler:Landroid/os/Handler;

.field private mStatusChangeListenerHandle:Ljava/lang/Object;

.field private mSyncStatusObserver:Landroid/content/SyncStatusObserver;

.field private mTimeFormat:Ljava/text/DateFormat;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;-><init>()V

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mHandler:Landroid/os/Handler;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    .line 58
    new-instance v0, Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-direct {v0}, Lcom/android/settings/accounts/AuthenticatorHelper;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 61
    const-string v0, "com.htc.sense.socialnetwork.twitter"

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->HTCTWITTERTYPE:Ljava/lang/String;

    .line 111
    new-instance v0, Lcom/android/settings/accounts/AccountPreferenceBase$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accounts/AccountPreferenceBase$1;-><init>(Lcom/android/settings/accounts/AccountPreferenceBase;)V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accounts/AccountPreferenceBase;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 13
    .parameter "accountType"
    .parameter "parent"

    .prologue
    .line 149
    const/4 v8, 0x0

    .line 150
    .local v8, prefs:Landroid/preference/PreferenceScreen;
    iget-object v10, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v10, p1}, Lcom/android/settings/accounts/AuthenticatorHelper;->containsAccountType(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "com.htc.sense.socialnetwork.twitter"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 151
    :cond_0
    const/4 v3, 0x0

    .line 153
    .local v3, desc:Landroid/accounts/AuthenticatorDescription;
    :try_start_0
    iget-object v10, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v10, p1}, Lcom/android/settings/accounts/AuthenticatorHelper;->getAccountTypeDescription(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v3

    .line 154
    if-eqz v3, :cond_1

    iget v10, v3, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    if-nez v10, :cond_2

    :cond_1
    const-string v10, "com.htc.sense.socialnetwork.twitter"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 155
    :cond_2
    const-string v10, "com.htc.sense.socialnetwork.twitter"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "com.htc.sense.socialnetwork.twitter"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 157
    .local v0, authContext:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/accounts/Util;->checkTwitterHaveFile(Landroid/content/Context;)I

    move-result v9

    .line 158
    .local v9, rid:I
    if-lez v9, :cond_5

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v10

    invoke-virtual {v10, v0, v9, p2}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 165
    const/4 v1, 0x0

    .line 166
    .local v1, contextField:Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    .line 167
    .local v2, contextField2:Ljava/lang/reflect/Field;
    const/4 v5, 0x0

    .local v5, i:I
    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v6

    .local v6, j:I
    :goto_0
    if-ge v5, v6, :cond_6

    .line 168
    invoke-virtual {v8, v5}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v10

    instance-of v10, v10, Landroid/preference/PreferenceCategory;

    if-eqz v10, :cond_7

    .line 169
    invoke-virtual {v8, v5}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 171
    .local v7, pc:Landroid/preference/PreferenceCategory;
    if-nez v1, :cond_3

    .line 172
    :try_start_1
    const-class v10, Landroid/preference/PreferenceCategory;

    invoke-virtual {v10}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "mContext"

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 174
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 176
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v1, v7, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    .line 186
    :goto_1
    :try_start_2
    invoke-virtual {v8, v5}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v10

    const v11, 0x7f04001e

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 167
    .end local v7           #pc:Landroid/preference/PreferenceCategory;
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 162
    .end local v1           #contextField:Ljava/lang/reflect/Field;
    .end local v2           #contextField2:Ljava/lang/reflect/Field;
    .end local v5           #i:I
    .end local v6           #j:I
    :cond_5
    const-string v10, "AccountSettings"

    const-string v11, "Can\'t get getIdentifier file !"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v10, 0x0

    .line 269
    .end local v0           #authContext:Landroid/content/Context;
    .end local v3           #desc:Landroid/accounts/AuthenticatorDescription;
    .end local v9           #rid:I
    :goto_3
    return-object v10

    .line 177
    .restart local v0       #authContext:Landroid/content/Context;
    .restart local v1       #contextField:Ljava/lang/reflect/Field;
    .restart local v2       #contextField2:Ljava/lang/reflect/Field;
    .restart local v3       #desc:Landroid/accounts/AuthenticatorDescription;
    .restart local v5       #i:I
    .restart local v6       #j:I
    .restart local v7       #pc:Landroid/preference/PreferenceCategory;
    .restart local v9       #rid:I
    :catch_0
    move-exception v4

    .line 178
    .local v4, e:Ljava/lang/SecurityException;
    invoke-virtual {v4}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 263
    .end local v0           #authContext:Landroid/content/Context;
    .end local v1           #contextField:Ljava/lang/reflect/Field;
    .end local v2           #contextField2:Ljava/lang/reflect/Field;
    .end local v4           #e:Ljava/lang/SecurityException;
    .end local v5           #i:I
    .end local v6           #j:I
    .end local v7           #pc:Landroid/preference/PreferenceCategory;
    .end local v9           #rid:I
    :catch_1
    move-exception v4

    .line 264
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "AccountSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Couldn\'t load preferences.xml file from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3           #desc:Landroid/accounts/AuthenticatorDescription;
    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_6
    :goto_4
    move-object v10, v8

    .line 269
    goto :goto_3

    .line 179
    .restart local v0       #authContext:Landroid/content/Context;
    .restart local v1       #contextField:Ljava/lang/reflect/Field;
    .restart local v2       #contextField2:Ljava/lang/reflect/Field;
    .restart local v3       #desc:Landroid/accounts/AuthenticatorDescription;
    .restart local v5       #i:I
    .restart local v6       #j:I
    .restart local v7       #pc:Landroid/preference/PreferenceCategory;
    .restart local v9       #rid:I
    :catch_2
    move-exception v4

    .line 180
    .local v4, e:Ljava/lang/NoSuchFieldException;
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/NoSuchFieldException;->printStackTrace()V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 265
    .end local v0           #authContext:Landroid/content/Context;
    .end local v1           #contextField:Ljava/lang/reflect/Field;
    .end local v2           #contextField2:Ljava/lang/reflect/Field;
    .end local v4           #e:Ljava/lang/NoSuchFieldException;
    .end local v5           #i:I
    .end local v6           #j:I
    .end local v7           #pc:Landroid/preference/PreferenceCategory;
    .end local v9           #rid:I
    :catch_3
    move-exception v4

    .line 266
    .local v4, e:Landroid/content/res/Resources$NotFoundException;
    const-string v10, "AccountSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Couldn\'t load preferences.xml file from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 181
    .end local v4           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local v0       #authContext:Landroid/content/Context;
    .restart local v1       #contextField:Ljava/lang/reflect/Field;
    .restart local v2       #contextField2:Ljava/lang/reflect/Field;
    .restart local v5       #i:I
    .restart local v6       #j:I
    .restart local v7       #pc:Landroid/preference/PreferenceCategory;
    .restart local v9       #rid:I
    :catch_4
    move-exception v4

    .line 182
    .local v4, e:Ljava/lang/IllegalArgumentException;
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 183
    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v4

    .line 184
    .local v4, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 187
    .end local v4           #e:Ljava/lang/IllegalAccessException;
    .end local v7           #pc:Landroid/preference/PreferenceCategory;
    :cond_7
    invoke-virtual {v8, v5}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v10

    instance-of v10, v10, Landroid/preference/PreferenceScreen;

    if-eqz v10, :cond_4

    .line 188
    invoke-virtual {v8, v5}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    .line 190
    .local v7, pc:Landroid/preference/PreferenceScreen;
    if-nez v2, :cond_8

    .line 191
    :try_start_5
    const-class v10, Landroid/preference/PreferenceScreen;

    invoke-virtual {v10}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "mContext"

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 193
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 195
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v2, v7, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    .line 205
    :goto_5
    :try_start_6
    invoke-virtual {v8, v5}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v10

    const v11, 0x7f0400e9

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setLayoutResource(I)V

    goto/16 :goto_2

    .line 196
    :catch_6
    move-exception v4

    .line 197
    .local v4, e:Ljava/lang/SecurityException;
    invoke-virtual {v4}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_5

    .line 198
    .end local v4           #e:Ljava/lang/SecurityException;
    :catch_7
    move-exception v4

    .line 199
    .local v4, e:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v4}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_5

    .line 200
    .end local v4           #e:Ljava/lang/NoSuchFieldException;
    :catch_8
    move-exception v4

    .line 201
    .local v4, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_5

    .line 202
    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    :catch_9
    move-exception v4

    .line 203
    .local v4, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_5

    .line 210
    .end local v0           #authContext:Landroid/content/Context;
    .end local v1           #contextField:Ljava/lang/reflect/Field;
    .end local v2           #contextField2:Ljava/lang/reflect/Field;
    .end local v4           #e:Ljava/lang/IllegalAccessException;
    .end local v5           #i:I
    .end local v6           #j:I
    .end local v7           #pc:Landroid/preference/PreferenceScreen;
    .end local v9           #rid:I
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iget-object v11, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 211
    .restart local v0       #authContext:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v10

    iget v11, v3, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    invoke-virtual {v10, v0, v11, p2}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 217
    const/4 v1, 0x0

    .line 218
    .restart local v1       #contextField:Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    .line 219
    .restart local v2       #contextField2:Ljava/lang/reflect/Field;
    const/4 v5, 0x0

    .restart local v5       #i:I
    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v6

    .restart local v6       #j:I
    :goto_6
    if-ge v5, v6, :cond_6

    .line 220
    invoke-virtual {v8, v5}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v10

    instance-of v10, v10, Landroid/preference/PreferenceCategory;

    if-eqz v10, :cond_c

    .line 221
    invoke-virtual {v8, v5}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_3

    .line 223
    .local v7, pc:Landroid/preference/PreferenceCategory;
    if-nez v1, :cond_a

    .line 224
    :try_start_7
    const-class v10, Landroid/preference/PreferenceCategory;

    invoke-virtual {v10}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "mContext"

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 226
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 228
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v1, v7, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_3

    .line 238
    :goto_7
    :try_start_8
    invoke-virtual {v8, v5}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v10

    const v11, 0x7f04001e

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 219
    .end local v7           #pc:Landroid/preference/PreferenceCategory;
    :cond_b
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 229
    .restart local v7       #pc:Landroid/preference/PreferenceCategory;
    :catch_a
    move-exception v4

    .line 230
    .local v4, e:Ljava/lang/SecurityException;
    invoke-virtual {v4}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_7

    .line 231
    .end local v4           #e:Ljava/lang/SecurityException;
    :catch_b
    move-exception v4

    .line 232
    .local v4, e:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v4}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_7

    .line 233
    .end local v4           #e:Ljava/lang/NoSuchFieldException;
    :catch_c
    move-exception v4

    .line 234
    .local v4, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_7

    .line 235
    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    :catch_d
    move-exception v4

    .line 236
    .local v4, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_7

    .line 239
    .end local v4           #e:Ljava/lang/IllegalAccessException;
    .end local v7           #pc:Landroid/preference/PreferenceCategory;
    :cond_c
    invoke-virtual {v8, v5}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v10

    instance-of v10, v10, Landroid/preference/PreferenceScreen;

    if-eqz v10, :cond_b

    .line 240
    invoke-virtual {v8, v5}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_3

    .line 242
    .local v7, pc:Landroid/preference/PreferenceScreen;
    if-nez v2, :cond_d

    .line 243
    :try_start_9
    const-class v10, Landroid/preference/PreferenceScreen;

    invoke-virtual {v10}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "mContext"

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 245
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 247
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v2, v7, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_9 .. :try_end_9} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_10
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_9} :catch_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_3

    .line 257
    :goto_9
    :try_start_a
    invoke-virtual {v8, v5}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v10

    const v11, 0x7f0400e9

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setLayoutResource(I)V

    goto :goto_8

    .line 248
    :catch_e
    move-exception v4

    .line 249
    .local v4, e:Ljava/lang/SecurityException;
    invoke-virtual {v4}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_9

    .line 250
    .end local v4           #e:Ljava/lang/SecurityException;
    :catch_f
    move-exception v4

    .line 251
    .local v4, e:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v4}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_9

    .line 252
    .end local v4           #e:Ljava/lang/NoSuchFieldException;
    :catch_10
    move-exception v4

    .line 253
    .local v4, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_9

    .line 254
    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    :catch_11
    move-exception v4

    .line 255
    .local v4, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_9
.end method

.method protected formatSyncDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .parameter "date"

    .prologue
    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mTimeFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v5, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    if-nez v5, :cond_2

    .line 123
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    .line 124
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v4

    .line 125
    .local v4, syncAdapters:[Landroid/content/SyncAdapterType;
    const/4 v1, 0x0

    .local v1, i:I
    array-length v2, v4

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 126
    aget-object v3, v4, v1

    .line 127
    .local v3, sa:Landroid/content/SyncAdapterType;
    iget-object v5, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 128
    .local v0, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .restart local v0       #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_0
    const-string v5, "AccountSettings"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 133
    const-string v5, "AccountSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "added authority "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to accountType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_1
    iget-object v5, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    .end local v0           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #i:I
    .end local v2           #n:I
    .end local v3           #sa:Landroid/content/SyncAdapterType;
    .end local v4           #syncAdapters:[Landroid/content/SyncAdapterType;
    :cond_2
    iget-object v5, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    return-object v5
.end method

.method protected getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "accountType"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "accountType"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 0
    .parameter "accounts"

    .prologue
    .line 68
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 90
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mDateFormat:Ljava/text/DateFormat;

    .line 91
    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mTimeFormat:Ljava/text/DateFormat;

    .line 92
    return-void
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;->onPause()V

    .line 108
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mStatusChangeListenerHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0}, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;->onResume()V

    .line 97
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mStatusChangeListenerHandle:Ljava/lang/Object;

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onSyncStateUpdated()V

    .line 103
    return-void
.end method

.method protected onSyncStateUpdated()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public updateAuthDescriptions()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onAuthDescriptionsUpdated()V

    .line 275
    return-void
.end method
