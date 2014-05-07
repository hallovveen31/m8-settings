.class public final Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;
.super Ljava/lang/Object;
.source "HtcRefWrapSettings.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final GLOBAL_CLASS_NAME:Ljava/lang/String; = "com.htc.wrap.android.provider.HtcWrapSettings$Global"

.field private static final SECURE_CLASS_NAME:Ljava/lang/String; = "com.htc.wrap.android.provider.HtcWrapSettings$Secure"

.field private static final SYSTEM_CLASS_NAME:Ljava/lang/String; = "com.htc.wrap.android.provider.HtcWrapSettings$System"

.field private static final TAG:Ljava/lang/String; = null

.field private static final WARNING_DEBUG:Z = true

.field private static sGlobalClass:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static sHTC_SPEAK_ANNOUNCE:Ljava/lang/String;

.field private static sSecureClass:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static sSystemClass:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HTC_SPEAK_ANNOUNCE()Ljava/lang/String;
    .locals 3

    .prologue
    .line 215
    sget-object v0, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->sHTC_SPEAK_ANNOUNCE:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 216
    sget-object v0, Lcom/android/settings/framework/database/HtcDatabaseTable;->SYSTEM:Lcom/android/settings/framework/database/HtcDatabaseTable;

    const-string v1, "HTC_SPEAK_ANNOUNCE"

    const-string v2, "htc_speak_announce"

    invoke-static {v0, v1, v2}, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/settings/framework/database/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->sHTC_SPEAK_ANNOUNCE:Ljava/lang/String;

    .line 221
    :cond_0
    sget-object v0, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->sHTC_SPEAK_ANNOUNCE:Ljava/lang/String;

    return-object v0
.end method

.method public static getConstValue(Lcom/android/settings/framework/database/HtcDatabaseTable;Ljava/lang/String;I)I
    .locals 3
    .parameter "table"
    .parameter "fieldName"
    .parameter "defValue"

    .prologue
    .line 196
    invoke-static {p0, p1}, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->getField(Lcom/android/settings/framework/database/HtcDatabaseTable;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 197
    .local v1, field:Ljava/lang/reflect/Field;
    if-eqz v1, :cond_0

    .line 199
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result p2

    .line 206
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 200
    .restart local p2
    :catch_0
    move-exception v0

    .line 201
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 202
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 203
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDatabaseKeyName(Lcom/android/settings/framework/database/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "table"
    .parameter "fieldName"
    .parameter "defKeyName"

    .prologue
    .line 166
    invoke-static {p0, p1}, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->getField(Lcom/android/settings/framework/database/HtcDatabaseTable;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 167
    .local v1, field:Ljava/lang/reflect/Field;
    if-eqz v1, :cond_0

    .line 169
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 176
    :goto_0
    return-object v2

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_1
    move-object v2, p2

    .line 176
    goto :goto_0

    .line 172
    :catch_1
    move-exception v0

    .line 173
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getField(Lcom/android/settings/framework/database/HtcDatabaseTable;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .parameter "table"
    .parameter "fieldName"

    .prologue
    .line 122
    sget-object v2, Lcom/android/settings/framework/database/HtcDatabaseTable;->SYSTEM:Lcom/android/settings/framework/database/HtcDatabaseTable;

    if-ne p0, v2, :cond_1

    .line 123
    invoke-static {}, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->getSystemClass()Ljava/lang/Class;

    move-result-object v1

    .line 133
    .local v1, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    if-nez v1, :cond_6

    .line 135
    sget-object v2, Lcom/android/settings/framework/database/HtcDatabaseTable;->SYSTEM:Lcom/android/settings/framework/database/HtcDatabaseTable;

    if-ne p0, v2, :cond_4

    .line 136
    sget-object v2, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->TAG:Ljava/lang/String;

    const-string v3, "com.htc.wrap.android.provider.HtcWrapSettings$System does not exist."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 144
    const/4 v0, 0x0

    .line 149
    :goto_2
    return-object v0

    .line 124
    .end local v1           #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1
    sget-object v2, Lcom/android/settings/framework/database/HtcDatabaseTable;->SECURE:Lcom/android/settings/framework/database/HtcDatabaseTable;

    if-ne p0, v2, :cond_2

    .line 125
    invoke-static {}, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->getSecureClass()Ljava/lang/Class;

    move-result-object v1

    .restart local v1       #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    goto :goto_0

    .line 126
    .end local v1           #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_2
    sget-object v2, Lcom/android/settings/framework/database/HtcDatabaseTable;->GLOBAL:Lcom/android/settings/framework/database/HtcDatabaseTable;

    if-ne p0, v2, :cond_3

    .line 127
    invoke-static {}, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->getGlobalClass()Ljava/lang/Class;

    move-result-object v1

    .restart local v1       #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    goto :goto_0

    .line 129
    .end local v1           #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknow table: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 137
    .restart local v1       #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_4
    sget-object v2, Lcom/android/settings/framework/database/HtcDatabaseTable;->SECURE:Lcom/android/settings/framework/database/HtcDatabaseTable;

    if-ne p0, v2, :cond_5

    .line 138
    sget-object v2, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->TAG:Ljava/lang/String;

    const-string v3, "com.htc.wrap.android.provider.HtcWrapSettings$Secure does not exist."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 139
    :cond_5
    sget-object v2, Lcom/android/settings/framework/database/HtcDatabaseTable;->GLOBAL:Lcom/android/settings/framework/database/HtcDatabaseTable;

    if-ne p0, v2, :cond_0

    .line 140
    sget-object v2, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->TAG:Ljava/lang/String;

    const-string v3, "com.htc.wrap.android.provider.HtcWrapSettings$Global does not exist."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 148
    :cond_6
    invoke-static {v1, p1}, Lcom/android/settings/framework/content/HtcClassManager;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 149
    .local v0, field:Ljava/lang/reflect/Field;
    goto :goto_2
.end method

.method private static getGlobalClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 96
    .local v0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->sGlobalClass:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_0

    .line 98
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->sGlobalClass:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    check-cast v0, Ljava/lang/Class;

    .line 101
    .restart local v0       #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    if-nez v0, :cond_1

    .line 102
    const-string v1, "com.htc.wrap.android.provider.HtcWrapSettings$Global"

    invoke-static {v1}, Lcom/android/settings/framework/content/HtcClassManager;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 103
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->sSecureClass:Ljava/lang/ref/SoftReference;

    .line 105
    :cond_1
    return-object v0
.end method

.method private static getSecureClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 76
    .local v0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->sSecureClass:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_0

    .line 78
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->sSecureClass:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    check-cast v0, Ljava/lang/Class;

    .line 81
    .restart local v0       #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    if-nez v0, :cond_1

    .line 82
    const-string v1, "com.htc.wrap.android.provider.HtcWrapSettings$Secure"

    invoke-static {v1}, Lcom/android/settings/framework/content/HtcClassManager;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 83
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->sSecureClass:Ljava/lang/ref/SoftReference;

    .line 85
    :cond_1
    return-object v0
.end method

.method private static getSystemClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 56
    .local v0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->sSystemClass:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_0

    .line 58
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->sSystemClass:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    check-cast v0, Ljava/lang/Class;

    .line 61
    .restart local v0       #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    if-nez v0, :cond_1

    .line 62
    const-string v1, "com.htc.wrap.android.provider.HtcWrapSettings$System"

    invoke-static {v1}, Lcom/android/settings/framework/content/HtcClassManager;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 63
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->sSystemClass:Ljava/lang/ref/SoftReference;

    .line 65
    :cond_1
    return-object v0
.end method
