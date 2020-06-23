.class public Lcom/android/systemui/SystemBars;
.super Lcom/android/systemui/SystemUI;
.source "SystemBars.java"


# instance fields
.field private mDeferBootCompleted:Z

.field private mStatusBar:Lcom/android/systemui/SystemUI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/SystemBars;->mDeferBootCompleted:Z

    .line 31
    return-void
.end method

.method private andLog(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 94
    const-string/jumbo v0, "SystemBars"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private createStatusBarFromConfig()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 66
    iget-object v3, p0, Lcom/android/systemui/SystemBars;->mContext:Landroid/content/Context;

    const v4, 0x7f11018a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "clsName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 68
    :cond_0
    const-string/jumbo v3, "No status bar component configured"

    invoke-direct {p0, v3, v6}, Lcom/android/systemui/SystemBars;->andLog(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 70
    :cond_1
    const/4 v0, 0x0

    .line 72
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/SystemBars;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 77
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/SystemUI;

    iput-object v3, p0, Lcom/android/systemui/SystemBars;->mStatusBar:Lcom/android/systemui/SystemUI;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    iget-object v3, p0, Lcom/android/systemui/SystemBars;->mStatusBar:Lcom/android/systemui/SystemUI;

    iget-object v4, p0, Lcom/android/systemui/SystemBars;->mContext:Landroid/content/Context;

    iput-object v4, v3, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 82
    iget-object v3, p0, Lcom/android/systemui/SystemBars;->mStatusBar:Lcom/android/systemui/SystemUI;

    iget-object v4, p0, Lcom/android/systemui/SystemBars;->mComponents:Ljava/util/Map;

    iput-object v4, v3, Lcom/android/systemui/SystemUI;->mComponents:Ljava/util/Map;

    .line 83
    iget-object v3, p0, Lcom/android/systemui/SystemBars;->mStatusBar:Lcom/android/systemui/SystemUI;

    invoke-virtual {v3}, Lcom/android/systemui/SystemUI;->start()V

    .line 85
    iget-boolean v3, p0, Lcom/android/systemui/SystemBars;->mDeferBootCompleted:Z

    if-eqz v3, :cond_2

    .line 86
    iput-boolean v5, p0, Lcom/android/systemui/SystemBars;->mDeferBootCompleted:Z

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/SystemBars;->onBootCompleted()V

    .line 91
    :cond_2
    return-void

    .line 73
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 74
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error loading status bar component: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/android/systemui/SystemBars;->andLog(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 78
    .end local v2    # "t":Ljava/lang/Throwable;
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v2

    .line 79
    .restart local v2    # "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error creating status bar component: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/android/systemui/SystemBars;->andLog(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/SystemBars;->mStatusBar:Lcom/android/systemui/SystemUI;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/systemui/SystemBars;->mStatusBar:Lcom/android/systemui/SystemUI;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/SystemUI;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 51
    :cond_0
    return-void
.end method

.method public onBootCompleted()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/systemui/SystemBars;->mStatusBar:Lcom/android/systemui/SystemUI;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/systemui/SystemBars;->mStatusBar:Lcom/android/systemui/SystemUI;

    invoke-virtual {v0}, Lcom/android/systemui/SystemUI;->onBootCompleted()V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/SystemBars;->mDeferBootCompleted:Z

    goto :goto_0
.end method

.method public start()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/systemui/SystemBars;->createStatusBarFromConfig()V

    .line 44
    return-void
.end method
