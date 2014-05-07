.class public abstract Lcom/android/settings/framework/reflect/HtcAbsWrapper;
.super Ljava/lang/Object;
.source "HtcAbsWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static sMethod_toString:Ljava/lang/reflect/Method;


# instance fields
.field protected mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private mInstance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, this:Lcom/android/settings/framework/reflect/HtcAbsWrapper;,"Lcom/android/settings/framework/reflect/HtcAbsWrapper<TT;>;"
    .local p1, klass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/settings/framework/reflect/HtcAbsWrapper;->mClass:Ljava/lang/Class;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, this:Lcom/android/settings/framework/reflect/HtcAbsWrapper;,"Lcom/android/settings/framework/reflect/HtcAbsWrapper<TT;>;"
    .local p1, klass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p2, instance:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/android/settings/framework/reflect/HtcAbsWrapper;->mClass:Ljava/lang/Class;

    .line 68
    iput-object p2, p0, Lcom/android/settings/framework/reflect/HtcAbsWrapper;->mInstance:Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, this:Lcom/android/settings/framework/reflect/HtcAbsWrapper;,"Lcom/android/settings/framework/reflect/HtcAbsWrapper<TT;>;"
    .local p1, instance:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/settings/framework/reflect/HtcAbsWrapper;->mInstance:Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/android/settings/framework/reflect/HtcAbsWrapper;->mInstance:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/settings/framework/reflect/HtcAbsWrapper;->mInstance:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/reflect/HtcAbsWrapper;->mClass:Ljava/lang/Class;

    .line 57
    :cond_0
    return-void
.end method

.method public static getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2
    .parameter
    .parameter "fieldName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 105
    :goto_0
    return-object v1

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, e:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 103
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static varargs getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .parameter
    .parameter "methodName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p2, parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 175
    :goto_0
    return-object v1

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 173
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getPrivateField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2
    .parameter
    .parameter "fieldName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p0, p1}, Lcom/android/settings/framework/reflect/HtcAbsWrapper;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 133
    .local v0, field:Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 134
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 136
    :cond_0
    return-object v0
.end method

.method public static varargs getPrivateMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .parameter
    .parameter "methodName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p2, parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    invoke-static {p0, p1, p2}, Lcom/android/settings/framework/reflect/HtcAbsWrapper;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 207
    .local v0, method:Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 208
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 210
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 1
    .parameter "fieldName"

    .prologue
    .line 115
    .local p0, this:Lcom/android/settings/framework/reflect/HtcAbsWrapper;,"Lcom/android/settings/framework/reflect/HtcAbsWrapper<TT;>;"
    iget-object v0, p0, Lcom/android/settings/framework/reflect/HtcAbsWrapper;->mClass:Ljava/lang/Class;

    invoke-static {v0, p1}, Lcom/android/settings/framework/reflect/HtcAbsWrapper;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public getInstance()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, this:Lcom/android/settings/framework/reflect/HtcAbsWrapper;,"Lcom/android/settings/framework/reflect/HtcAbsWrapper<TT;>;"
    iget-object v0, p0, Lcom/android/settings/framework/reflect/HtcAbsWrapper;->mInstance:Ljava/lang/Object;

    return-object v0
.end method

.method protected varargs getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .parameter "methodName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 187
    .local p0, this:Lcom/android/settings/framework/reflect/HtcAbsWrapper;,"Lcom/android/settings/framework/reflect/HtcAbsWrapper<TT;>;"
    .local p2, parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/android/settings/framework/reflect/HtcAbsWrapper;->mClass:Ljava/lang/Class;

    invoke-static {v0, p1, p2}, Lcom/android/settings/framework/reflect/HtcAbsWrapper;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method protected getPrivateField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 1
    .parameter "fieldName"

    .prologue
    .line 146
    .local p0, this:Lcom/android/settings/framework/reflect/HtcAbsWrapper;,"Lcom/android/settings/framework/reflect/HtcAbsWrapper<TT;>;"
    iget-object v0, p0, Lcom/android/settings/framework/reflect/HtcAbsWrapper;->mClass:Ljava/lang/Class;

    invoke-static {v0, p1}, Lcom/android/settings/framework/reflect/HtcAbsWrapper;->getPrivateField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method protected varargs getPrivateMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .parameter "methodName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 222
    .local p0, this:Lcom/android/settings/framework/reflect/HtcAbsWrapper;,"Lcom/android/settings/framework/reflect/HtcAbsWrapper<TT;>;"
    .local p2, parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/android/settings/framework/reflect/HtcAbsWrapper;->mClass:Ljava/lang/Class;

    invoke-static {v0, p1, p2}, Lcom/android/settings/framework/reflect/HtcAbsWrapper;->getPrivateMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .local p0, this:Lcom/android/settings/framework/reflect/HtcAbsWrapper;,"Lcom/android/settings/framework/reflect/HtcAbsWrapper<TT;>;"
    const/4 v3, 0x0

    .line 228
    sget-object v1, Lcom/android/settings/framework/reflect/HtcAbsWrapper;->sMethod_toString:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 229
    const-class v1, Ljava/lang/Object;

    const-string v2, "toString"

    new-array v3, v3, [Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lcom/android/settings/framework/reflect/HtcAbsWrapper;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/settings/framework/reflect/HtcAbsWrapper;->sMethod_toString:Ljava/lang/reflect/Method;

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/reflect/HtcAbsWrapper;->mInstance:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 234
    :try_start_0
    sget-object v1, Lcom/android/settings/framework/reflect/HtcAbsWrapper;->sMethod_toString:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/settings/framework/reflect/HtcAbsWrapper;->mInstance:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_0
    return-object v1

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 239
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
