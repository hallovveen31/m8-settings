.class public abstract Lcom/android/settings/framework/preference/HtcAbsDatabaseCheckboxPreference;
.super Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;
.source "HtcAbsDatabaseCheckboxPreference.java"


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceVersion;
    value = 2.0
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/HtcAbsDatabaseCheckboxPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/HtcAbsDatabaseCheckboxPreference;->TAG:Ljava/lang/String;

    .line 34
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/HtcAbsDatabaseCheckboxPreference;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method


# virtual methods
.method protected decodeBooleanValue(Ljava/lang/String;)Z
    .locals 1
    .parameter "rawValue"

    .prologue
    .line 162
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected encodeBooleanValue(Z)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 177
    if-eqz p1, :cond_0

    const-string v0, "1"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method protected abstract getCustomDatabaseDefaultValue()Z
.end method

.method protected abstract getCustomDatabaseKey()Ljava/lang/String;
.end method

.method protected abstract getCustomDatabaseTable()Lcom/android/settings/framework/database/HtcDatabaseTable;
.end method

.method protected final onGetValueInBackground(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 7
    .parameter "context"

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 99
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsDatabaseCheckboxPreference;->getCustomDatabaseTable()Lcom/android/settings/framework/database/HtcDatabaseTable;

    move-result-object v3

    .line 100
    .local v3, table:Lcom/android/settings/framework/database/HtcDatabaseTable;
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsDatabaseCheckboxPreference;->getCustomDatabaseKey()Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, key:Ljava/lang/String;
    sget-object v5, Lcom/android/settings/framework/database/HtcDatabaseTable;->SYSTEM:Lcom/android/settings/framework/database/HtcDatabaseTable;

    if-ne v3, v5, :cond_1

    .line 105
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, rawValue:Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_3

    .line 114
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/HtcAbsDatabaseCheckboxPreference;->decodeBooleanValue(Ljava/lang/String;)Z

    move-result v4

    .line 120
    .local v4, value:Z
    :goto_1
    sget-boolean v5, Lcom/android/settings/framework/preference/HtcAbsDatabaseCheckboxPreference;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 121
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "][get]["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/preference/HtcAbsDatabaseCheckboxPreference;->log(Ljava/lang/String;)V

    .line 123
    :cond_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    return-object v5

    .line 106
    .end local v2           #rawValue:Ljava/lang/String;
    .end local v4           #value:Z
    :cond_1
    sget-object v5, Lcom/android/settings/framework/database/HtcDatabaseTable;->GLOBAL:Lcom/android/settings/framework/database/HtcDatabaseTable;

    if-ne v3, v5, :cond_2

    .line 107
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #rawValue:Ljava/lang/String;
    goto :goto_0

    .line 109
    .end local v2           #rawValue:Ljava/lang/String;
    :cond_2
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #rawValue:Ljava/lang/String;
    goto :goto_0

    .line 117
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsDatabaseCheckboxPreference;->getCustomDatabaseDefaultValue()Z

    move-result v4

    .restart local v4       #value:Z
    goto :goto_1
.end method

.method protected final onSetValueInBackground(Landroid/content/Context;Z)Z
    .locals 7
    .parameter "context"
    .parameter "newState"

    .prologue
    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 130
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsDatabaseCheckboxPreference;->getCustomDatabaseTable()Lcom/android/settings/framework/database/HtcDatabaseTable;

    move-result-object v4

    .line 131
    .local v4, table:Lcom/android/settings/framework/database/HtcDatabaseTable;
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsDatabaseCheckboxPreference;->getCustomDatabaseKey()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p0, p2}, Lcom/android/settings/framework/preference/HtcAbsDatabaseCheckboxPreference;->encodeBooleanValue(Z)Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, rawValue:Ljava/lang/String;
    sget-object v5, Lcom/android/settings/framework/database/HtcDatabaseTable;->SYSTEM:Lcom/android/settings/framework/database/HtcDatabaseTable;

    if-ne v4, v5, :cond_1

    .line 136
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 143
    .local v3, result:Z
    :goto_0
    sget-boolean v5, Lcom/android/settings/framework/preference/HtcAbsDatabaseCheckboxPreference;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 144
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "][set]["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v3, :cond_3

    const-string v5, "successful"

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/preference/HtcAbsDatabaseCheckboxPreference;->log(Ljava/lang/String;)V

    .line 147
    :cond_0
    return v3

    .line 137
    .end local v3           #result:Z
    :cond_1
    sget-object v5, Lcom/android/settings/framework/database/HtcDatabaseTable;->GLOBAL:Lcom/android/settings/framework/database/HtcDatabaseTable;

    if-ne v4, v5, :cond_2

    .line 138
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .restart local v3       #result:Z
    goto :goto_0

    .line 140
    .end local v3           #result:Z
    :cond_2
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .restart local v3       #result:Z
    goto :goto_0

    .line 144
    :cond_3
    const-string v5, "failed"

    goto :goto_1
.end method
